#!/usr/bin/env python3

"""
Interactive TUI for compiling LilyPond files with real-time status monitoring
Built with Textual for a modern terminal interface

Usage: ./compile_lilypond_tui.py [--ignore pattern] [root_directory]
--ignore: ignore files matching pattern (can be used multiple times)
If no directory is specified, uses current directory
"""

import argparse
import os
import re
import sys
import shutil
import subprocess
import tempfile
import threading
from pathlib import Path
from fnmatch import fnmatch
from typing import List, Set, Tuple, Optional, Dict
from dataclasses import dataclass
from enum import Enum
from datetime import datetime
from concurrent.futures import ThreadPoolExecutor, Future
import traceback
import multiprocessing
import logging
import time

# Textual imports
try:
    from textual.app import App, ComposeResult
    from textual.containers import Container, Vertical, Horizontal, ScrollableContainer
    from textual.widgets import Header, Footer, DataTable, Static, Button, Label
    from textual.binding import Binding
    from textual.reactive import reactive
    from textual import events
    from textual.message import Message
except ImportError:
    print("Error: textual library is not installed.")
    print("Install it with: pip install textual")
    sys.exit(1)

# Watchdog for file monitoring
try:
    from watchdog.observers import Observer
    from watchdog.events import FileSystemEventHandler
except ImportError:
    print("Error: watchdog is not installed.")
    print("Install it with: pip install watchdog")
    sys.exit(1)


class FileStatus(Enum):
    """Status of a LilyPond file"""
    UP_TO_DATE = "up-to-date"
    PENDING = "pending"
    COMPILING = "compiling"
    ERROR = "error"
    IGNORED = "ignored"


@dataclass
class FileInfo:
    """Information about a LilyPond file"""
    ly_path: str
    output_name: str
    partes_dir: str
    status: FileStatus
    last_compiled: Optional[datetime] = None
    error_message: Optional[str] = None
    dependencies: Set[str] = None
    
    def __post_init__(self):
        if self.dependencies is None:
            self.dependencies = set()
    
    @property
    def output_file(self) -> str:
        return os.path.join(self.partes_dir, f"{self.output_name}.pdf")
    
    @property
    def display_name(self) -> str:
        return os.path.basename(self.ly_path)


# Compile regex patterns once for better performance
include_quoted = re.compile(r'\\include\s+"([^"]+)"')
include_unquoted = re.compile(r'\\include\s+([^\s]+)')


def extract_filename(file_path: str) -> Optional[str]:
    """Extract filename from LilyPond file header"""
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
            match = re.search(r'filename\s*=\s*"([^"]*)"', content)
            if match:
                return match.group(1)
    except (IOError, OSError):
        pass
    return None


def canonicalize_path(path: str) -> str:
    """Canonicalize a path for cross-platform compatibility"""
    try:
        return str(Path(path).resolve())
    except Exception:
        return path


def find_includes(file_path: str, base_dir: str, processed_files: Set[str]) -> None:
    """Recursively find all included files"""
    canonical_file = canonicalize_path(file_path)
    
    if canonical_file in processed_files:
        return
    
    processed_files.add(canonical_file)
    
    try:
        with open(file_path, 'r', encoding='utf-8', errors='ignore') as f:
            for line in f:
                match = include_quoted.search(line)
                if not match:
                    match = include_unquoted.search(line)
                    if match:
                        include_file = match.group(1).strip('"')
                    else:
                        continue
                else:
                    include_file = match.group(1)
                
                if os.path.isabs(include_file):
                    full_include_path = include_file
                else:
                    full_include_path = os.path.join(base_dir, include_file)
                
                if os.path.isfile(full_include_path):
                    find_includes(full_include_path, os.path.dirname(full_include_path), processed_files)
    except (IOError, OSError):
        pass


def get_newest_mtime(files: Set[str]) -> float:
    """Get the newest modification time among all files"""
    newest_mtime = 0.0
    for file_path in files:
        try:
            mtime = os.path.getmtime(file_path)
            if mtime > newest_mtime:
                newest_mtime = mtime
        except (IOError, OSError):
            pass
    return newest_mtime


def needs_compilation(input_file: str, output_file: str, dependencies: Set[str]) -> bool:
    """Check if compilation is needed"""
    if not os.path.isfile(output_file):
        return True
    
    try:
        output_mtime = os.path.getmtime(output_file)
    except (IOError, OSError):
        return True
    
    newest_source_mtime = get_newest_mtime(dependencies)
    return newest_source_mtime > output_mtime


def should_ignore_file(file_path: str, ignore_patterns: List[str]) -> bool:
    """Check if a file should be ignored based on patterns"""
    basename_file = os.path.basename(file_path)
    
    for pattern in ignore_patterns:
        if fnmatch(file_path, pattern) or fnmatch(basename_file, pattern):
            return True
    
    return False


def get_running_processes() -> Set[str]:
    """Get list of running process names"""
    try:
        if sys.platform.startswith('linux') or sys.platform == 'darwin':
            # Use ps command
            result = subprocess.run(
                ['ps', 'aux'],
                capture_output=True,
                text=True,
                check=False
            )
            if result.returncode == 0:
                # Extract process names from ps output
                processes = set()
                for line in result.stdout.split('\n')[1:]:  # Skip header
                    parts = line.split()
                    if len(parts) > 10:
                        # Get the command (usually in the 11th column)
                        cmd = parts[10]
                        # Extract just the executable name
                        processes.add(os.path.basename(cmd))
                return processes
        elif sys.platform.startswith('win'):
            # Use tasklist on Windows
            result = subprocess.run(
                ['tasklist'],
                capture_output=True,
                text=True,
                check=False
            )
            if result.returncode == 0:
                processes = set()
                for line in result.stdout.split('\n')[1:]:
                    parts = line.split()
                    if parts:
                        processes.add(parts[0].lower())
                return processes
    except Exception as e:
        logging.debug(f"Failed to get running processes: {e}")
    
    return set()


def detect_running_editor() -> Tuple[Optional[str], Optional[str], bool]:
    """Detect running editor and return command format
    
    Returns:
        Tuple of (editor_name, command_format, is_vscode_based) where:
        - editor_name: Name of the editor
        - command_format: Command format with {file} placeholder
        - is_vscode_based: True if editor is VSCode-based (supports --goto for PDFs)
    """
    running_processes = get_running_processes()
    
    # Debug: log detected processes that might be editors
    editor_keywords = ['code', 'codium', 'cursor', 'subl', 'atom', 'gedit', 'kate', 'electron']
    detected = [p for p in running_processes if any(kw in p.lower() for kw in editor_keywords)]
    if detected:
        logging.debug(f"Found editor-related processes: {detected}")
    
    # Check for running editors (in order of preference)
    # VSCode-based editors (support --goto for all file types including PDFs)
    # Check for various VSCode process names
    vscode_patterns = [
        (['code', 'Code', 'code-oss', 'Code - OSS'], 'code --goto "{file}"'),
        (['codium', 'Codium', 'VSCodium'], 'codium --goto "{file}"'),
        (['cursor', 'Cursor'], 'cursor --goto "{file}"'),
        (['code-insiders', 'Code - Insiders'], 'code-insiders --goto "{file}"'),
    ]
    
    for patterns, cmd_format in vscode_patterns:
        for pattern in patterns:
            if pattern in running_processes or any(pattern in p for p in running_processes):
                # Extract the actual command name from cmd_format
                editor_name = cmd_format.split()[0]
                logging.debug(f"Detected VSCode-based editor: {pattern} -> {editor_name}")
                return editor_name, cmd_format, True
    
    # Other editors
    other_editors = [
        ('subl', 'subl "{file}"'),                  # Sublime Text
        ('sublime_text', 'subl "{file}"'),          # Sublime Text (alt name)
        ('atom', 'atom "{file}"'),                  # Atom
        ('gedit', 'gedit "{file}"'),                # gedit
        ('kate', 'kate "{file}"'),                  # Kate
    ]
    
    for proc_name, cmd_format in other_editors:
        if proc_name in running_processes:
            return proc_name, cmd_format, False
    
    return None, None, False


def open_file_in_editor(file_path: str, editor_cmd: Optional[str] = None, is_vscode: bool = False) -> bool:
    """Open a file in the detected or specified editor, or use system default
    
    Args:
        file_path: Path to the file to open
        editor_cmd: Optional command format with {file} placeholder
        is_vscode: Whether the editor is VSCode-based
        
    Returns:
        True if successful, False otherwise
    """
    if not os.path.exists(file_path):
        logging.warning(f"File does not exist: {file_path}")
        return False
    
    try:
        # Determine the command to use
        if editor_cmd:
            # Use the specified editor command
            if file_path.endswith('.pdf') and not is_vscode:
                # Use system default for PDFs on non-VSCode editors
                cmd = get_system_open_command(file_path)
            else:
                # Use the editor command
                cmd = editor_cmd.format(file=file_path)
        else:
            # No editor detected, use system default
            cmd = get_system_open_command(file_path)
        
        if not cmd:
            logging.warning("No suitable method to open file")
            return False
        
        # Run the command in the background
        subprocess.Popen(
            cmd,
            shell=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            start_new_session=True
        )
        return True
    except Exception as e:
        logging.error(f"Failed to open file: {e}")
        return False


def get_system_open_command(file_path: str) -> Optional[str]:
    """Get the system default command to open a file
    
    Args:
        file_path: Path to the file to open
        
    Returns:
        Command string or None if not available
    """
    if sys.platform.startswith('linux'):
        return f'xdg-open "{file_path}"'
    elif sys.platform == 'darwin':
        return f'open "{file_path}"'
    elif sys.platform.startswith('win'):
        return f'start "" "{file_path}"'
    return None


def get_all_dependencies(input_file: str) -> Set[str]:
    """Get all dependencies for a LilyPond file"""
    processed_files: Set[str] = set()
    find_includes(input_file, os.path.dirname(input_file), processed_files)
    return processed_files


def find_all_lilypond_files(root_dir: str, ignore_patterns: List[str]) -> List[FileInfo]:
    """Find all LilyPond files with filenames"""
    files_list = []
    
    for root, dirs, files in os.walk(root_dir):
        if 'lilypond' in dirs:
            lilypond_dir = os.path.join(root, 'lilypond')
            
            for ly_root, ly_dirs, ly_files in os.walk(lilypond_dir):
                for ly_file in ly_files:
                    if ly_file.endswith('.ly'):
                        ly_path = os.path.join(ly_root, ly_file)
                        
                        if should_ignore_file(ly_path, ignore_patterns):
                            continue
                        
                        filename = extract_filename(ly_path)
                        if filename:
                            base_dir = os.path.dirname(lilypond_dir)
                            partes_dir = os.path.join(base_dir, 'partes')
                            os.makedirs(partes_dir, exist_ok=True)
                            
                            dependencies = get_all_dependencies(ly_path)
                            file_info = FileInfo(
                                ly_path=ly_path,
                                output_name=filename,
                                partes_dir=partes_dir,
                                status=FileStatus.UP_TO_DATE,
                                dependencies=dependencies
                            )
                            files_list.append(file_info)
    
    return files_list


class CompilationManager:
    """Manages compilation of LilyPond files"""
    
    def __init__(self, files: List[FileInfo], ignore_patterns: List[str],
                 app: 'LilyPondApp', root_dir: str, point_and_click: bool = False, max_workers: int = 4):
        self.files = {f.ly_path: f for f in files}
        self.ignore_patterns = ignore_patterns
        self.app = app
        self.root_dir = root_dir
        self.point_and_click = point_and_click
        self.executor = ThreadPoolExecutor(max_workers=max_workers)
        self.active_futures: Dict[str, Future] = {}
        self.lock = threading.Lock()
        
        # Build reverse dependency map
        self.dependents: Dict[str, Set[str]] = {}
        self._rebuild_dependency_map()
    
    def compile_file(self, ly_path: str, force: bool = False) -> Tuple[bool, Optional[str]]:
        """Compile a single LilyPond file
        
        Args:
            ly_path: Path to the LilyPond file
            force: If True, compile even if file is up-to-date
        """
        with self.lock:
            file_info = self.files.get(ly_path)
            if not file_info:
                return False, "File not found"
            
            file_info.status = FileStatus.COMPILING
        
        self.app.call_from_thread(self.app.refresh_table)
        
        try:
            output_file = file_info.output_file
            
            # Check if compilation is needed (unless forced)
            if not force and not needs_compilation(ly_path, output_file, file_info.dependencies):
                with self.lock:
                    file_info.status = FileStatus.UP_TO_DATE
                    file_info.last_compiled = datetime.now()
                self.app.call_from_thread(self.app.refresh_table)
                return True, None
            
            # Compile
            with tempfile.TemporaryDirectory() as temp_dir:
                cmd = ['lilypond']
                
                if not self.point_and_click:
                    cmd.append('-dno-point-and-click')
                
                cmd.append(f'--output={temp_dir}')
                cmd.append('-s')
                cmd.append(ly_path)
                
                result = subprocess.run(
                    cmd, 
                    check=False, 
                    stdout=subprocess.PIPE, 
                    stderr=subprocess.PIPE,
                    text=True
                )
                
                if result.returncode == 0:
                    ly_basename = os.path.splitext(os.path.basename(ly_path))[0]
                    generated_pdf = os.path.join(temp_dir, f"{ly_basename}.pdf")
                    generated_midi = os.path.join(temp_dir, f"{ly_basename}.midi")
                    
                    if os.path.isfile(generated_pdf):
                        shutil.move(generated_pdf, output_file)
                        if os.path.isfile(generated_midi):
                            shutil.move(generated_midi, os.path.dirname(ly_path))
                        
                        with self.lock:
                            file_info.status = FileStatus.UP_TO_DATE
                            file_info.last_compiled = datetime.now()
                            file_info.error_message = None
                        self.app.call_from_thread(self.app.refresh_table)
                        return True, None
                    else:
                        error_msg = "PDF was not generated"
                        with self.lock:
                            file_info.status = FileStatus.ERROR
                            file_info.error_message = error_msg
                        self.app.call_from_thread(self.app.refresh_table)
                        return False, error_msg
                else:
                    error_msg = result.stderr if result.stderr else "Compilation failed"
                    with self.lock:
                        file_info.status = FileStatus.ERROR
                        file_info.error_message = error_msg
                    self.app.call_from_thread(self.app.refresh_table)
                    return False, error_msg
        
        except Exception as e:
            error_msg = f"{str(e)}\n{traceback.format_exc()}"
            with self.lock:
                file_info.status = FileStatus.ERROR
                file_info.error_message = error_msg
            self.app.call_from_thread(self.app.refresh_table)
            return False, error_msg
    
    def schedule_compilation(self, ly_path: str, force: bool = False, from_ui_thread: bool = False):
        """Schedule a file for compilation
        
        Args:
            ly_path: Path to the LilyPond file
            force: If True, compile even if file is up-to-date
            from_ui_thread: If True, caller is already on UI thread
        """
        with self.lock:
            # Mark as pending
            file_info = self.files.get(ly_path)
            if file_info:
                file_info.status = FileStatus.PENDING
            
            # Cancel existing future if any
            if ly_path in self.active_futures:
                self.active_futures[ly_path].cancel()
            
            # Submit new compilation
            future = self.executor.submit(self.compile_file, ly_path, force)
            self.active_futures[ly_path] = future
            
            def cleanup(f):
                with self.lock:
                    if ly_path in self.active_futures:
                        del self.active_futures[ly_path]
            
            future.add_done_callback(cleanup)
        
        # Refresh UI to show pending state
        if from_ui_thread:
            self.app.refresh_table()
        else:
            self.app.call_from_thread(self.app.refresh_table)
    
    def _rebuild_dependency_map(self):
        """Rebuild the reverse dependency map"""
        self.dependents.clear()
        for file_info in self.files.values():
            for dep in file_info.dependencies:
                if dep not in self.dependents:
                    self.dependents[dep] = set()
                self.dependents[dep].add(file_info.ly_path)
    
    def rebuild_file_list(self):
        """Rebuild the file list and dependency map from disk"""
        with self.lock:
            # Find all files again
            new_files_list = find_all_lilypond_files(self.root_dir, self.ignore_patterns)
            new_files = {f.ly_path: f for f in new_files_list}
            
            # Preserve status and error information for existing files
            for ly_path, new_file_info in new_files.items():
                if ly_path in self.files:
                    old_file_info = self.files[ly_path]
                    new_file_info.status = old_file_info.status
                    new_file_info.last_compiled = old_file_info.last_compiled
                    new_file_info.error_message = old_file_info.error_message
                else:
                    # New file - mark as pending
                    new_file_info.status = FileStatus.PENDING
            
            # Update files dict
            self.files = new_files
            
            # Rebuild dependency map
            self._rebuild_dependency_map()
        
        # Refresh UI
        self.app.call_from_thread(self.app.refresh_table)
        
        # Check all files to see if they need compilation
        # This handles both new files and files with updated dependencies
        for ly_path, file_info in self.files.items():
            if needs_compilation(ly_path, file_info.output_file, file_info.dependencies):
                self.schedule_compilation(ly_path)
    
    def handle_file_change(self, changed_path: str):
        """Handle a file change"""
        changed_path = canonicalize_path(changed_path)
        
        # Check if this is a new .ly file that we're not tracking
        if changed_path.endswith('.ly') and changed_path not in self.files:
            # Check if it's in a lilypond directory and has a filename header
            if 'lilypond' in changed_path and extract_filename(changed_path):
                # Rebuild the entire file list to pick up the new file
                threading.Thread(target=self.rebuild_file_list, daemon=True).start()
                return
        
        # For .ily files, dependencies might have changed - rebuild map
        if changed_path.endswith('.ily'):
            threading.Thread(target=self.rebuild_file_list, daemon=True).start()
            return
        
        # For tracked .ly files, compile them
        if changed_path in self.files:
            self.schedule_compilation(changed_path)
        
        # Check if any tracked files depend on this file
        if changed_path in self.dependents:
            for dependent in self.dependents[changed_path]:
                self.schedule_compilation(dependent)
    
    def initial_scan(self):
        """Perform initial scan and compile files that need it"""
        for ly_path, file_info in self.files.items():
            if needs_compilation(ly_path, file_info.output_file, file_info.dependencies):
                self.schedule_compilation(ly_path)
            else:
                file_info.status = FileStatus.UP_TO_DATE
        self.app.call_from_thread(self.app.refresh_table)
    
    def toggle_point_and_click(self):
        """Toggle point-and-click mode"""
        self.point_and_click = not self.point_and_click
    
    def get_status_summary(self) -> Dict[str, int]:
        """Get summary of file statuses"""
        summary = {status.value: 0 for status in FileStatus}
        with self.lock:
            for file_info in self.files.values():
                summary[file_info.status.value] += 1
        return summary
    
    def shutdown(self):
        """Shutdown the executor"""
        self.executor.shutdown(wait=True)


class StatusBar(Static):
    """Custom status bar widget"""
    
    def __init__(self, manager: CompilationManager):
        super().__init__()
        self.manager = manager
    
    def on_mount(self) -> None:
        """Set up a timer to update the status bar"""
        self.set_interval(0.5, self.update_status)
    
    def update_status(self) -> None:
        """Update the status bar content"""
        summary = self.manager.get_status_summary()
        
        # Use desaturated colors for a modern look
        status_parts = []
        status_parts.append(f"[#90c890]Up-to-date: {summary['up-to-date']}[/]")
        status_parts.append(f"[#d4b871]Pending: {summary['pending']}[/]")
        status_parts.append(f"[#82b5d6]Compiling: {summary['compiling']}[/]")
        status_parts.append(f"[#d68a8a]Errors: {summary['error']}[/]")
        
        mode_color = "#90c890" if self.manager.point_and_click else "#d68a8a"
        mode = "ON" if self.manager.point_and_click else "OFF"
        
        self.update(f"{' | '.join(status_parts)} | [#a0a0a0]Point-and-click:[/] [{mode_color}]{mode}[/]")


class ErrorPanel(ScrollableContainer):
    """Panel to display error details with scrolling"""
    
    def __init__(self, error_files: List[FileInfo]):
        super().__init__()
        self.error_files = error_files
        self.current_index = 0
    
    def compose(self) -> ComposeResult:
        """Create child widgets"""
        if not self.error_files:
            yield Static("[#d4b871]No errors to display[/]")
            return
        
        # Navigation info
        nav_text = f"Error {self.current_index + 1} of {len(self.error_files)}"
        if len(self.error_files) > 1:
            nav_text += " (Use ← → arrows to navigate)"
        yield Static(f"[bold #82b5d6]{nav_text}[/]", id="error_nav")
        
        # Current error details
        file_info = self.error_files[self.current_index]
        error_text = f"[bold #e0e0e0]File:[/] {file_info.display_name}\n"
        error_text += f"[bold #e0e0e0]Output:[/] {file_info.output_name}\n\n"
        error_text += f"[bold #d68a8a]Error Message:[/]\n{file_info.error_message or 'Unknown error'}"
        yield Static(error_text, id="error_content")
    
    def next_error(self):
        """Show next error"""
        if len(self.error_files) > 1:
            self.current_index = (self.current_index + 1) % len(self.error_files)
            self.refresh_error()
    
    def prev_error(self):
        """Show previous error"""
        if len(self.error_files) > 1:
            self.current_index = (self.current_index - 1) % len(self.error_files)
            self.refresh_error()
    
    def refresh_error(self):
        """Refresh the displayed error"""
        # Update navigation
        nav_text = f"Error {self.current_index + 1} of {len(self.error_files)}"
        if len(self.error_files) > 1:
            nav_text += " (Use ← → arrows to navigate)"
        nav_widget = self.query_one("#error_nav", Static)
        nav_widget.update(f"[bold #82b5d6]{nav_text}[/]")
        
        # Update error content
        file_info = self.error_files[self.current_index]
        error_text = f"[bold #e0e0e0]File:[/] {file_info.display_name}\n"
        error_text += f"[bold #e0e0e0]Output:[/] {file_info.output_name}\n\n"
        error_text += f"[bold #d68a8a]Error Message:[/]\n{file_info.error_message or 'Unknown error'}"
        content_widget = self.query_one("#error_content", Static)
        content_widget.update(error_text)


class LilyPondApp(App):
    """Main Textual application"""
    
    CSS = """
    Screen {
        background: transparent;
    }
    
    DataTable {
        height: 1fr;
        background: transparent;
        border: solid #333333;
    }
    
    DataTable > .datatable--header {
        background: $surface;
        color: $text;
    }
    
    DataTable > .datatable--cursor {
        background: $surface-lighten-1;
    }
    
    StatusBar {
        dock: top;
        height: 3;
        background: transparent;
        content-align: center middle;
        text-style: bold;
        color: $text;
    }
    
    Header {
        background: $surface;
        color: $text;
    }
    
    Footer {
        background: $surface;
        color: $text-muted;
    }
    
    #error_container {
        height: 1fr;
        display: none;
        border: solid #8b0000;
        background: transparent;
        padding: 1;
    }
    
    #error_nav {
        text-align: center;
        padding: 1;
        background: $surface;
        color: $text;
    }
    
    #error_content {
        padding: 1;
        color: $text;
    }
    
    #error_container.visible {
        display: block;
    }
    """
    
    BINDINGS = [
        Binding("p", "toggle_point_and_click", "Toggle point-and-click"),
        Binding("e", "toggle_errors", "View Errors"),
        Binding("r", "recompile_all", "Recompile All"),
        Binding("s", "open_source", "Open Source"),
        Binding("o", "open_output", "Open Output"),
        Binding("q", "quit", "Quit"),
    ]
    
    def __init__(self, manager: CompilationManager, observer: Observer):
        super().__init__()
        self.manager = manager
        self.observer = observer
        self.show_errors = False
        self.table = None
        self.error_panel = None
        self.editor_name = None
        self.editor_cmd = None
        self.is_vscode = False
        
        # Track last click for double-click detection
        self.last_click_time = 0
        self.last_click_row = None
        self.double_click_threshold = 0.4  # seconds
        
        # Detect running editor on initialization
        self.refresh_editor_detection()
    
    def refresh_editor_detection(self):
        """Refresh editor detection"""
        self.editor_name, self.editor_cmd, self.is_vscode = detect_running_editor()
        if not self.editor_name:
            logging.debug("No editor currently running")
    
    def compose(self) -> ComposeResult:
        """Create child widgets"""
        yield Header()
        yield StatusBar(self.manager)
        yield DataTable(id="files_table")
        yield ScrollableContainer(id="error_container")
        yield Footer()
    
    def on_mount(self) -> None:
        """Set up the table when app is mounted"""
        self.table = self.query_one(DataTable)
        self.table.add_columns("Status", "Source", "Output", "Last Compiled")
        self.table.cursor_type = "row"
        self.refresh_table()
        
        # Start initial scan in background
        threading.Thread(target=self.manager.initial_scan, daemon=True).start()
    
    def refresh_table(self) -> None:
        """Refresh the table contents"""
        if not self.table:
            return
        
        # Clear and repopulate
        self.table.clear()
        
        # Sort by output name (the PDF filename that will be generated)
        files = sorted(
            self.manager.files.values(),
            key=lambda f: f.output_name.lower()
        )
        
        # Use desaturated colors matching the status bar
        status_styles = {
            FileStatus.UP_TO_DATE: "#90c890",
            FileStatus.PENDING: "#d4b871",
            FileStatus.COMPILING: "#82b5d6",
            FileStatus.ERROR: "#d68a8a",
            FileStatus.IGNORED: "#606060"
        }
        
        status_symbols = {
            FileStatus.UP_TO_DATE: "✓",
            FileStatus.PENDING: "⋯",
            FileStatus.COMPILING: "⚙",
            FileStatus.ERROR: "✗",
            FileStatus.IGNORED: "○"
        }
        
        for file_info in files:
            symbol = status_symbols.get(file_info.status, "?")
            style = status_styles.get(file_info.status, "white")
            status_text = f"[{style}]{symbol} {file_info.status.value}[/{style}]"
            
            last_compiled = file_info.last_compiled.strftime("%Y-%m-%d %H:%M:%S") if file_info.last_compiled else "-"
            
            self.table.add_row(
                status_text,
                file_info.display_name,
                file_info.output_name,
                last_compiled
            )
    
    def action_toggle_point_and_click(self) -> None:
        """Toggle point-and-click mode"""
        self.manager.toggle_point_and_click()
    
    def action_recompile_all(self) -> None:
        """Recompile all files (forced)"""
        for ly_path in self.manager.files.keys():
            self.manager.schedule_compilation(ly_path, force=True, from_ui_thread=True)
        self.refresh_table()
    
    def action_toggle_errors(self) -> None:
        """Toggle error display"""
        self.show_errors = not self.show_errors
        error_container = self.query_one("#error_container")
        
        if self.show_errors:
            # Find error files
            error_files = [f for f in self.manager.files.values() if f.status == FileStatus.ERROR]
            
            error_container.remove_children()
            if error_files:
                self.error_panel = ErrorPanel(error_files)
                error_container.mount(self.error_panel)
                error_container.add_class("visible")
            else:
                error_container.mount(Static("[#d4b871]No errors to display[/]"))
                error_container.add_class("visible")
        else:
            error_container.remove_class("visible")
            error_container.remove_children()
            self.error_panel = None
    
    def get_selected_file(self) -> Optional[FileInfo]:
        """Get the currently selected file"""
        if not self.table:
            return None
        
        row_index = self.table.cursor_row
        if row_index < 0:
            return None
        
        files = sorted(
            self.manager.files.values(),
            key=lambda f: f.output_name.lower()
        )
        
        if 0 <= row_index < len(files):
            return files[row_index]
        
        return None
    
    def action_open_source(self) -> None:
        """Open the source file in the editor or system default"""
        # Refresh editor detection in case it was started after TUI launch
        self.refresh_editor_detection()
        
        file_info = self.get_selected_file()
        if not file_info:
            return
        
        # Open the source file
        if self.editor_cmd:
            if not open_file_in_editor(file_info.ly_path, self.editor_cmd, self.is_vscode):
                logging.warning(f"Failed to open {file_info.display_name}")
        else:
            # No running editor detected, use system default
            if not open_file_in_editor(file_info.ly_path, None, False):
                logging.warning(f"Failed to open {file_info.display_name}")
    
    def action_open_output(self) -> None:
        """Open the output PDF"""
        # Refresh editor detection in case it was started after TUI launch
        self.refresh_editor_detection()
        
        file_info = self.get_selected_file()
        if not file_info:
            return
        
        output_file = file_info.output_file
        
        # Check if output file exists
        if not os.path.exists(output_file):
            logging.warning(f"Output file does not exist: {os.path.basename(output_file)}")
            return
        
        # For VSCode-based editors, use the editor command to open PDF
        # For others or no editor, use system default viewer
        if self.is_vscode and self.editor_cmd:
            if not open_file_in_editor(output_file, self.editor_cmd, self.is_vscode):
                logging.warning(f"Failed to open {os.path.basename(output_file)}")
        else:
            # Use system default viewer (works whether editor is detected or not)
            if not open_file_in_editor(output_file, None, False):
                logging.warning(f"Failed to open {os.path.basename(output_file)}")
    
    def on_data_table_row_selected(self, event: DataTable.RowSelected) -> None:
        """Handle row selection with double-click detection"""
        current_time = time.time()
        current_row = event.cursor_row
        
        # Check if this is a double-click (same row within threshold)
        if (current_row == self.last_click_row and
            current_time - self.last_click_time < self.double_click_threshold):
            # Double-click detected - open the source file
            self.action_open_source()
            # Reset to prevent triple-click from triggering
            self.last_click_time = 0
            self.last_click_row = None
        else:
            # Single click - just update tracking
            self.last_click_time = current_time
            self.last_click_row = current_row
    
    def on_key(self, event: events.Key) -> None:
        """Handle key events for error navigation"""
        if self.show_errors and self.error_panel:
            if event.key == "left":
                self.error_panel.prev_error()
                event.prevent_default()
            elif event.key == "right":
                self.error_panel.next_error()
                event.prevent_default()


def run_app(root_dir: str, ignore_patterns: List[str], max_workers: Optional[int] = None):
    """Run the Textual application"""
    # Set up logging
    logging.basicConfig(
        level=logging.INFO,
        format='%(levelname)s: %(message)s'
    )
    
    # Find all files
    print("Scanning for LilyPond files...")
    files = find_all_lilypond_files(root_dir, ignore_patterns)
    
    if not files:
        print("No LilyPond files found with 'filename' header.")
        return
    
    # Determine number of workers
    if max_workers is None:
        max_workers = multiprocessing.cpu_count()
    
    # Detect running editor
    editor_name, _, is_vscode = detect_running_editor()
    if editor_name:
        editor_type = "VSCode-based" if is_vscode else "standard"
        print(f"Detected running editor: {editor_name} ({editor_type})")
    else:
        print("No running editor detected. Will use system default for opening files.")
    
    print(f"Found {len(files)} files")
    print(f"Using {max_workers} parallel workers")
    
    # Set up file watcher
    class LilyPondEventHandler(FileSystemEventHandler):
        def __init__(self, manager):
            self.manager = manager
        
        def on_modified(self, event):
            if not event.is_directory:
                self.manager.handle_file_change(event.src_path)
        
        def on_created(self, event):
            if not event.is_directory:
                self.manager.handle_file_change(event.src_path)
    
    observer = Observer()
    
    # Create app first (needed for manager callbacks)
    app = LilyPondApp(None, observer)
    
    # Create compilation manager with app reference
    manager = CompilationManager(files, ignore_patterns, app, root_dir, max_workers=max_workers)
    app.manager = manager
    
    # Set up event handler with manager
    event_handler = LilyPondEventHandler(manager)
    
    # Watch all lilypond directories recursively
    watched_dirs = set()
    for root, dirs, _ in os.walk(root_dir):
        if 'lilypond' in dirs:
            lilypond_dir = os.path.join(root, 'lilypond')
            if lilypond_dir not in watched_dirs:
                observer.schedule(event_handler, lilypond_dir, recursive=True)
                watched_dirs.add(lilypond_dir)
                logging.debug(f"Watching directory: {lilypond_dir}")
    
    observer.start()
    
    try:
        app.run()
    finally:
        observer.stop()
        observer.join()
        manager.shutdown()


def main():
    """Main entry point"""
    parser = argparse.ArgumentParser(
        description='Interactive TUI for compiling LilyPond files',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Controls:
  p - Toggle point-and-click links (ON by default)
  e - View error details
  r - Recompile all files
  s - Open source file in editor
  o - Open output PDF
  q - Quit

Examples:
  %(prog)s
  %(prog)s --ignore '*test*' --ignore '*backup*'
  %(prog)s /path/to/repertoire
        """
    )
    
    parser.add_argument('--ignore', action='append', default=[],
                       help='Ignore files matching pattern (can be used multiple times)')
    parser.add_argument('-j', '--jobs', type=int, default=None, metavar='N',
                       help=f'Number of parallel compilation jobs (default: {multiprocessing.cpu_count()} - number of CPU cores)')
    parser.add_argument('root_directory', nargs='?', default='.',
                       help='Directory to scan (default: current directory)')
    
    args = parser.parse_args()
    
    if not os.path.isdir(args.root_directory):
        print(f"Error: Directory '{args.root_directory}' does not exist.")
        sys.exit(1)
    
    # Validate jobs argument
    if args.jobs is not None and args.jobs < 1:
        print(f"Error: Number of jobs must be at least 1 (got {args.jobs})")
        sys.exit(1)
    
    # Check if LilyPond is installed
    if not shutil.which('lilypond'):
        print("Warning: LilyPond is not installed or not in PATH.")
        print("Install it with: sudo apt-get install lilypond (Ubuntu/Debian)")
        sys.exit(1)
    
    run_app(args.root_directory, args.ignore, args.jobs)


if __name__ == '__main__':
    main()