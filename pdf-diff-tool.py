#!/usr/bin/env python3
"""
CLI tool to compare PDF files from different git commits.
This tool finds PDF files in 'partes' directories and allows comparing
the current version with a version from a selected commit.
"""

import os
import subprocess
import sys
import tempfile
import shutil
from pathlib import Path
from datetime import datetime


def find_pdf_files_in_partes():
    """Find all PDF files in directories named 'partes' that have a sibling 'lilypond' directory."""
    pdf_files = []
    for root, dirs, files in os.walk('.'):
        if 'partes' in Path(root).parts:
            # Check if there's a sibling 'lilypond' directory
            partes_path = Path(root)
            parent_dir = partes_path.parent
            lilypond_dir = parent_dir / 'lilypond'
            
            if lilypond_dir.exists() and lilypond_dir.is_dir():
                for file in files:
                    if file.endswith('.pdf'):
                        pdf_path = os.path.join(root, file)
                        # Normalize the path
                        pdf_path = os.path.normpath(pdf_path)
                        pdf_files.append(pdf_path)
    return sorted(pdf_files)


def get_commit_message_from_repo(commit_hash):
    """Get the commit message from the repository history (not just file history)."""
    try:
        result = subprocess.run(
            ['git', 'log', '-1', '--pretty=format:%s', commit_hash],
            capture_output=True,
            text=True,
            check=True
        )
        return result.stdout.strip()
    except subprocess.CalledProcessError:
        return None


def get_previous_commit_message(commit_hash):
    """Get the message of the commit that came before this one in the repo."""
    try:
        # Get the parent commit's message directly
        result = subprocess.run(
            ['git', 'log', '-1', '--pretty=format:%s', f'{commit_hash}^'],
            capture_output=True,
            text=True,
            check=True
        )
        return result.stdout.strip()
    except subprocess.CalledProcessError:
        return None


def get_commits_for_file(file_path):
    """Get list of commits that affected the specified file."""
    try:
        # Get commits with date formatting
        result = subprocess.run(
            ['git', 'log', '--pretty=format:%H|%ad|%s', '--date=short', '--', file_path],
            capture_output=True,
            text=True,
            check=True
        )
        
        commits = []
        
        for line in result.stdout.strip().split('\n'):
            if line:
                parts = line.split('|', 2)
                if len(parts) == 3:
                    commit_hash, date, message = parts
                    
                    # If this is an "Auto-compile" message, get the previous commit's message from repo history
                    if message == "Auto-compile LilyPond files":
                        previous_message = get_previous_commit_message(commit_hash)
                        display_message = previous_message if previous_message else message
                    else:
                        display_message = message
                    
                    commits.append({
                        'hash': commit_hash,
                        'date': date,
                        'message': display_message,
                        'original_message': message
                    })
        
        return commits
    except subprocess.CalledProcessError as e:
        print(f"Error getting commits: {e}", file=sys.stderr)
        return []


def get_file_from_commit(commit_hash, file_path):
    """Get file content from a specific commit."""
    try:
        result = subprocess.run(
            ['git', 'show', f'{commit_hash}:{file_path}'],
            capture_output=True,
            check=True
        )
        return result.stdout
    except subprocess.CalledProcessError as e:
        print(f"Error getting file from commit: {e}", file=sys.stderr)
        return None


def select_from_list(items, item_type="item"):
    """Display a list and let user select an item."""
    if not items:
        print(f"No {item_type}s found.")
        return None
    
    print(f"\nAvailable {item_type}s:")
    print("-" * 80)
    for i, item in enumerate(items, 1):
        print(f"{i}. {item}")
    print("-" * 80)
    
    while True:
        try:
            choice = input(f"\nSelect a {item_type} (1-{len(items)}) or 'q' to quit: ").strip()
            if choice.lower() == 'q':
                return None
            choice_num = int(choice)
            if 1 <= choice_num <= len(items):
                return items[choice_num - 1]
            else:
                print(f"Please enter a number between 1 and {len(items)}")
        except ValueError:
            print("Please enter a valid number or 'q' to quit")
        except KeyboardInterrupt:
            print("\nCancelled.")
            return None


def select_commit(commits):
    """Display commits and let user select one."""
    if not commits:
        print("No commits found for this file.")
        return None
    
    print("\nCommits that affected this file:")
    print("-" * 80)
    for i, commit in enumerate(commits, 1):
        print(f"{i}. [{commit['date']}] {commit['message'][:60]} (#{commit['hash'][:8]})")
    print("-" * 80)
    
    while True:
        try:
            choice = input(f"\nSelect a commit (1-{len(commits)}) or 'q' to quit: ").strip()
            if choice.lower() == 'q':
                return None
            choice_num = int(choice)
            if 1 <= choice_num <= len(commits):
                return commits[choice_num - 1]
            else:
                print(f"Please enter a number between 1 and {len(commits)}")
        except ValueError:
            print("Please enter a valid number or 'q' to quit")
        except KeyboardInterrupt:
            print("\nCancelled.")
            return None


def check_diff_pdf():
    """Check if diff-pdf is installed."""
    return shutil.which('diff-pdf') is not None


def is_headless():
    """Check if running in a headless environment (no display)."""
    # Check if DISPLAY is set (Linux/Unix)
    if os.name != 'nt':  # Not Windows
        display = os.environ.get('DISPLAY')
        if not display:
            return True
    else:
        # On Windows, assume not headless
        return False
    
    return True 

def main():
    print("=" * 80)
    print("PDF Diff Tool - Compare PDF files across git commits")
    print("=" * 80)
    
    # Check if we're in a git repository
    try:
        subprocess.run(['git', 'rev-parse', '--git-dir'], 
                      capture_output=True, 
                      check=True)
    except subprocess.CalledProcessError:
        print("Error: Not in a git repository.", file=sys.stderr)
        sys.exit(1)
    
    # Check if diff-pdf is installed
    if not check_diff_pdf():
        print("\nWarning: 'diff-pdf' command not found.")
        print("Please install diff-pdf to use this tool.")
        print("\nInstallation options:")
        print("  • macOS (Homebrew):")
        print("    brew install diff-pdf")
        print("  • macOS (MacPorts):")
        print("    sudo port install diff-pdf")
        print("  • Fedora/CentOS 8:")
        print("    sudo dnf install diff-pdf")
        print("\nFor other systems or to build from source:")
        print("  https://github.com/vslavik/diff-pdf")
        response = input("\nContinue anyway? (y/n): ").strip().lower()
        if response != 'y':
            sys.exit(1)
    
    # Find PDF files in 'partes' directories
    print("\nSearching for PDF files in 'partes' directories...")
    pdf_files = find_pdf_files_in_partes()
    
    if not pdf_files:
        print("No PDF files found in 'partes' directories.")
        sys.exit(1)
    
    # Let user select a PDF file
    selected_file = select_from_list(pdf_files, "PDF file")
    if not selected_file:
        print("No file selected. Exiting.")
        sys.exit(0)
    
    print(f"\nSelected: {selected_file}")
    
    # Get commits for the selected file
    print("\nFetching commit history...")
    commits = get_commits_for_file(selected_file)
    
    if not commits:
        print(f"No commits found for {selected_file}")
        sys.exit(1)
    
    # Let user select a commit
    selected_commit = select_commit(commits)
    if not selected_commit:
        print("No commit selected. Exiting.")
        sys.exit(0)
    
    print(f"\nSelected commit: {selected_commit['hash'][:8]} - {selected_commit['date']}")
    print(f"Message: {selected_commit['message']}")
    
    # Get the file from the selected commit
    print("\nRetrieving file from commit...")
    old_content = get_file_from_commit(selected_commit['hash'], selected_file)
    
    if old_content is None:
        print("Failed to retrieve file from commit.")
        sys.exit(1)
    
    # Create temporary file for the old version
    with tempfile.NamedTemporaryFile(mode='wb', suffix='.pdf', delete=False) as temp_file:
        temp_file.write(old_content)
        temp_path = temp_file.name
    
    try:
        # Determine if we're in a headless environment
        headless = is_headless()
        
        if headless:
            # Use output mode for headless environments
            output_file = 'diff.pdf'
            print("\nRunning diff-pdf in headless mode...")
            print(f"Comparing:")
            print(f"  OLD: {selected_file} (commit {selected_commit['hash'][:8]} from {selected_commit['date']})")
            print(f"  NEW: {selected_file} (current version)")
            print(f"\nGenerating diff PDF: {output_file}")
            print()
            
            result = subprocess.run(
                ['diff-pdf', '--output-diff', output_file, temp_path, selected_file],
                capture_output=True,
                text=True
            )
            
            if result.returncode == 0:
                print(f"✓ No differences found between the files.")
                print(f"  (Both versions are identical)")
            elif result.returncode == 1:
                print(f"✓ Differences found! Visual diff saved to: {output_file}")
                print(f"  Open this file to see highlighted differences.")
            else:
                print(f"✗ Error running diff-pdf:")
                if result.stderr:
                    print(result.stderr)
        else:
            # Use interactive view mode for graphical environments
            print("\nLaunching diff-pdf viewer...")
            print(f"Comparing:")
            print(f"  OLD: {selected_file} (commit {selected_commit['hash'][:8]} from {selected_commit['date']})")
            print(f"  NEW: {selected_file} (current version)")
            print()
            
            subprocess.run(['diff-pdf', '--view', temp_path, selected_file])
        
    finally:
        # Clean up temporary file
        try:
            os.unlink(temp_path)
        except:
            pass
    
    print("\nDone!")


if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print("\n\nCancelled by user.")
        sys.exit(0)