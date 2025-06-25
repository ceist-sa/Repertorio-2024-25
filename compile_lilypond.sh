#!/bin/bash

# Script to recursively compile LilyPond files with filename header to PDF
# Usage: ./compile_lilypond.sh [-v] [-w] [--ignore pattern] [root_directory]
# -v: verbose mode (show LilyPond output)
# -w: watch mode (monitor files for changes and auto-recompile)
# --ignore: ignore files matching pattern (can be used multiple times)
# If no directory is specified, uses current directory

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Default values
VERBOSE=false
WATCH_MODE=false
ROOT_DIR="."
IGNORE_PATTERNS=()

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        -v|--verbose)
            VERBOSE=true
            shift
            ;;
        -w|--watch)
            WATCH_MODE=true
            shift
            ;;
        --ignore)
            if [[ -n "$2" && "$2" != -* ]]; then
                IGNORE_PATTERNS+=("$2")
                shift 2
            else
                echo -e "${RED}Error: --ignore requires a pattern argument${NC}"
                exit 1
            fi
            ;;
        -h|--help)
            echo "Usage: $0 [-v] [-w] [--ignore pattern] [root_directory]"
            echo "  -v, --verbose    Show LilyPond compilation output"
            echo "  -w, --watch      Watch files for changes and auto-recompile"
            echo "  --ignore pattern Ignore files matching pattern (can be used multiple times)"
            echo "  -h, --help       Show this help message"
            echo "  root_directory   Directory to scan (default: current directory)"
            echo ""
            echo "Examples:"
            echo "  $0 --ignore '*test*' --ignore '*backup*'"
            echo "  $0 -w --ignore 'draft_*.ly'"
            exit 0
            ;;
        *)
            ROOT_DIR="$1"
            shift
            ;;
    esac
done

# Check if root directory exists
if [ ! -d "$ROOT_DIR" ]; then
    echo -e "${RED}Error: Directory '$ROOT_DIR' does not exist.${NC}"
    exit 1
fi

# Function to extract filename from LilyPond file
extract_filename() {
    local file="$1"
    # Look for filename = "value" pattern and extract the value
    grep -o 'filename[[:space:]]*=[[:space:]]*"[^"]*"' "$file" | sed 's/.*"\([^"]*\)".*/\1/'
}

# Function to recursively find all included files
find_includes() {
    local file="$1"
    local base_dir="$2"
    local temp_file="$3"
    
    # Add the current file to the list
    echo "$file" >> "$temp_file"
    
    # Find all \include statements in the file
    while IFS= read -r line; do
        # Extract filename from \include "filename" or \include filename
        if [[ $line =~ \\include[[:space:]]+\"([^\"]+)\" ]]; then
            local include_file="${BASH_REMATCH[1]}"
        elif [[ $line =~ \\include[[:space:]]+([^[:space:]]+) ]]; then
            local include_file="${BASH_REMATCH[1]}"
            # Remove quotes if present
            include_file="${include_file//\"/}"
        else
            continue
        fi
        
        # Resolve relative path
        local full_include_path
        if [[ "$include_file" = /* ]]; then
            # Absolute path
            full_include_path="$include_file"
        else
            # Relative path - resolve relative to the directory containing the current file
            full_include_path="$base_dir/$include_file"
        fi
        
        # Check if the included file exists and hasn't been processed yet
        if [ -f "$full_include_path" ] && ! grep -Fxq "$full_include_path" "$temp_file"; then
            # Recursively find includes in the included file
            find_includes "$full_include_path" "$(dirname "$full_include_path")" "$temp_file"
        fi
    done < "$file"
}

# Function to get the newest modification time among all files
get_newest_mtime() {
    local temp_file="$1"
    local newest_mtime=0
    
    while IFS= read -r file; do
        if [ -f "$file" ]; then
            local file_mtime=$(stat -c %Y "$file" 2>/dev/null || echo 0)
            if [ "$file_mtime" -gt "$newest_mtime" ]; then
                newest_mtime=$file_mtime
            fi
        fi
    done < "$temp_file"
    
    echo $newest_mtime
}

# Function to check if compilation is needed
needs_compilation() {
    local input_file="$1"
    local output_file="$2"
    
    # If output file doesn't exist, compilation is needed
    if [ ! -f "$output_file" ]; then
        return 0  # true - needs compilation
    fi
    
    # Get modification time of output file
    local output_mtime=$(stat -c %Y "$output_file" 2>/dev/null || echo 0)
    
    # Create temporary file for includes list
    local temp_includes=$(mktemp)
    
    # Find all included files
    find_includes "$input_file" "$(dirname "$input_file")" "$temp_includes"
    
    # Get the newest modification time among all source files
    local newest_source_mtime=$(get_newest_mtime "$temp_includes")
    
    # Clean up temporary file
    rm -f "$temp_includes"
    
    # Compare times
    if [ "$newest_source_mtime" -gt "$output_mtime" ]; then
        return 0  # true - needs compilation
    else
        return 1  # false - no compilation needed
    fi
}

# Function to compile LilyPond file
compile_lilypond() {
    local input_file="$1"
    local output_name="$2"
    local partes_dir="$3"
    local output_file="$partes_dir/${output_name}.pdf"
    
    # Check if compilation is needed
    if ! needs_compilation "$input_file" "$output_file"; then
        echo -e "${GREEN}✓ Up to date: ${BOLD}${output_name}.pdf${NC}"
        return 0
    fi
    
    local temp_dir=$(mktemp -d)
    
    echo -e "${CYAN}Compiling: ${BOLD}$(basename "$input_file")${NC}${CYAN} -> ${BOLD}${output_name}.pdf${NC}"
    
    # Show included files in verbose mode
    if [ "$VERBOSE" = true ]; then
        echo -e "${YELLOW}Checking dependencies...${NC}"
        local temp_includes=$(mktemp)
        find_includes "$input_file" "$(dirname "$input_file")" "$temp_includes"
        while IFS= read -r include_file; do
            if [ "$include_file" != "$input_file" ]; then
                echo -e "${YELLOW}  Include: $(basename "$include_file")${NC}"
            fi
        done < "$temp_includes"
        rm -f "$temp_includes"
    fi
    
    # Compile with LilyPond, output to temporary directory
    # Control output based on verbose flag
    if [ "$VERBOSE" = true ]; then
        lilypond --output="$temp_dir" "$input_file"
        local compile_result=$?
    else
        lilypond -s --output="$temp_dir" "$input_file"
        local compile_result=$?
    fi
    
    if [ $compile_result -eq 0 ]; then
        # Find the generated PDF (LilyPond creates PDF with same name as .ly file)
        local ly_basename=$(basename "$input_file" .ly)
        local generated_pdf="$temp_dir/${ly_basename}.pdf"

        # Remove constantly changing metadata from the PDF
        sed -i "/ModifyDate\|CreateDate\|DocumentID\|CreationDate\|ModDate\|\/ID/d" "$generated_pdf"

        if [ -f "$generated_pdf" ]; then
            # Move to partes directory with the specified filename
            mv "$generated_pdf" "$output_file"
            echo -e "${GREEN}✓ Successfully created: ${BOLD}$output_file${NC}"
        else
            echo -e "${RED}✗ Error: PDF was not generated for $input_file${NC}"
        fi
    else
        echo -e "${RED}✗ Error: LilyPond compilation failed for $input_file${NC}"
    fi
    
    # Clean up temporary directory
    rm -rf "$temp_dir"
}

# Function to check if a file should be ignored
should_ignore_file() {
    local file="$1"
    local basename_file=$(basename "$file")
    
    for pattern in "${IGNORE_PATTERNS[@]}"; do
        # Check against full path
        if [[ "$file" == $pattern ]]; then
            return 0  # true - should ignore
        fi
        # Check against basename
        if [[ "$basename_file" == $pattern ]]; then
            return 0  # true - should ignore
        fi
    done
    return 1  # false - should not ignore
}

# Function to process a single lilypond directory
process_lilypond_directory() {
    local lilypond_dir="$1"
    local base_dir=$(dirname "$lilypond_dir")
    local partes_dir="$base_dir/partes"
    local files_checked=0
    
    echo ""
    echo -e "${BLUE}${BOLD}Processing: $lilypond_dir${NC}"
    echo -e "${BLUE}Output to: $partes_dir${NC}"
    
    # Create partes directory if it doesn't exist
    mkdir -p "$partes_dir"
    
    # Process all .ly files in this lilypond directory and its subdirectories
    while IFS= read -r -d '' ly_file; do
        # Check if file should be ignored
        if should_ignore_file "$ly_file"; then
            echo -e "${YELLOW}⚠ Ignoring: $(basename "$ly_file")${NC}"
            continue
        fi
        
        # Extract filename from header
        filename=$(extract_filename "$ly_file")
        
        if [ -n "$filename" ]; then
            ((files_checked++))
            local output_file="$partes_dir/${filename}.pdf"
            if needs_compilation "$ly_file" "$output_file"; then
                compile_lilypond "$ly_file" "$filename" "$partes_dir"
                ((total_processed++))
            else
                echo -e "${GREEN}✓ Up to date: ${BOLD}${filename}.pdf${NC}"
                ((total_uptodate++))
            fi
        else
            echo -e "${YELLOW}⚠ Skipping $(basename "$ly_file"): No 'filename' header found${NC}"
        fi
    done < <(find "$lilypond_dir" -name "*.ly" -type f -print0)
    
    if [ $files_checked -eq 0 ]; then
        echo -e "${YELLOW}No files with 'filename' header found in this directory.${NC}"
    fi
}

# Function to get all dependencies for a LilyPond file
get_all_dependencies() {
    local input_file="$1"
    local temp_file=$(mktemp)
    find_includes "$input_file" "$(dirname "$input_file")" "$temp_file"
    cat "$temp_file"
    rm -f "$temp_file"
}

# Function to find all LilyPond files with filenames
find_all_lilypond_files() {
    local files_list=$(mktemp)
    
    while IFS= read -r -d '' lilypond_dir; do
        while IFS= read -r -d '' ly_file; do
            # Check if file should be ignored
            if should_ignore_file "$ly_file"; then
                continue
            fi
            
            filename=$(extract_filename "$ly_file")
            if [ -n "$filename" ]; then
                local base_dir=$(dirname "$lilypond_dir")
                local partes_dir="$base_dir/partes"
                echo "$ly_file|$filename|$partes_dir" >> "$files_list"
            fi
        done < <(find "$lilypond_dir" -name "*.ly" -type f -print0)
    done < <(find "$ROOT_DIR" -type d -name "lilypond" -print0)
    
    cat "$files_list"
    rm -f "$files_list"
}

# Function to watch for file changes
watch_files() {
    echo -e "${BOLD}${BLUE}Entering watch mode...${NC}"
    echo -e "${YELLOW}Press Ctrl+C to exit${NC}"
    
    # Show ignore patterns if any
    if [ ${#IGNORE_PATTERNS[@]} -gt 0 ]; then
        echo -e "${YELLOW}Ignoring patterns: ${IGNORE_PATTERNS[*]}${NC}"
    fi
    
    echo ""
    
    # Check if inotifywait is available
    if ! command -v inotifywait &> /dev/null; then
        echo -e "${RED}Error: inotifywait is not installed.${NC}"
        echo -e "${YELLOW}Install it with: ${BOLD}sudo apt-get install inotify-tools${NC}"
        exit 1
    fi
    
    # Create a temporary file to store file mappings
    local watch_map=$(mktemp)
    local all_files=$(mktemp)
    
    # Build mapping of files to their LilyPond sources
    while IFS='|' read -r ly_file filename partes_dir; do
        # Get all dependencies for this LilyPond file
        while IFS= read -r dep_file; do
            echo "$dep_file|$ly_file|$filename|$partes_dir" >> "$watch_map"
            echo "$dep_file" >> "$all_files"
        done < <(get_all_dependencies "$ly_file")
    done < <(find_all_lilypond_files)
    
    # Remove duplicates from all_files
    sort "$all_files" | uniq > "${all_files}.tmp"
    mv "${all_files}.tmp" "$all_files"
    
    # Set up signal handler for graceful exit
    trap 'echo -e "\n${YELLOW}Exiting watch mode...${NC}"; rm -f "$watch_map" "$all_files"; exit 0' INT TERM
    
    # Watch for changes
    while IFS= read -r file; do
        if [ -f "$file" ]; then
            echo "$file"
        fi
    done < "$all_files" | \
    inotifywait -m --format '%w%f' -e modify -e move -e create -e delete --fromfile - 2>/dev/null | \
    while read -r changed_file; do
        # Check if the changed file should be ignored
        if should_ignore_file "$changed_file"; then
            continue
        fi
        
        echo -e "${YELLOW}File changed: $(basename "$changed_file")${NC}"
        
        # Find all LilyPond files that depend on this changed file
        local files_to_compile=$(mktemp)
        grep "^$changed_file|" "$watch_map" | cut -d'|' -f2-4 | sort | uniq > "$files_to_compile"
        
        if [ -s "$files_to_compile" ]; then
            while IFS='|' read -r ly_file filename partes_dir; do
                if [ -f "$ly_file" ] && ! should_ignore_file "$ly_file"; then
                    compile_lilypond "$ly_file" "$filename" "$partes_dir"
                fi
            done < "$files_to_compile"
        fi
        
        rm -f "$files_to_compile"
        echo ""
    done
    
    # Clean up
    rm -f "$watch_map" "$all_files"
}

# Main processing
if [ "$WATCH_MODE" = true ]; then
    watch_files
else
    echo -e "${BOLD}Scanning for 'lilypond' directories in: $ROOT_DIR${NC}"
    echo -e "${BOLD}==========================================${NC}"

    # Counter for total processed files
    total_processed=0
    total_uptodate=0

    # Find all directories named "lilypond" recursively
    while IFS= read -r -d '' lilypond_dir; do
        lilypond_dir=$(sed 's/\.\///' <<< "$lilypond_dir")
        process_lilypond_directory "$lilypond_dir"
    done < <(find "$ROOT_DIR" -type d -name "lilypond" -print0)

    echo ""
    echo -e "${BOLD}==========================================${NC}"
    echo -e "${GREEN}${BOLD}Files compiled: $total_processed${NC}"
    echo -e "${GREEN}${BOLD}Files up to date: $total_uptodate${NC}"
    echo -e "${GREEN}${BOLD}Total files checked: $((total_processed + total_uptodate))${NC}"
fi

# Check if LilyPond is installed
if ! command -v lilypond &> /dev/null; then
    echo ""
    echo -e "${YELLOW}Warning: LilyPond is not installed or not in PATH.${NC}"
    echo -e "${YELLOW}Install it with: ${BOLD}sudo apt-get install lilypond${NC}${YELLOW} (Ubuntu/Debian)${NC}"
    echo -e "${YELLOW}Or download from: ${BOLD}https://lilypond.org/download.html${NC}"
fi

# Check if inotify-tools is installed (for watch mode)
if [ "$WATCH_MODE" = true ] && ! command -v inotifywait &> /dev/null; then
    echo ""
    echo -e "${YELLOW}Note: For watch mode, install inotify-tools:${NC}"
    echo -e "${YELLOW}${BOLD}sudo apt-get install inotify-tools${NC}"
fi
