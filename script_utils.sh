#!/bin/bash

###################################################################
#Script Name    : shell script utility functions
#Description	: Utility functions for shell scripting
#Author       	: Ali Abbasi
#Email         	: info@aliabbasi.net
###################################################################

# Color Codes
# Colors used for output messages to enhance readability
RED='\033[0;31m'        # Red color for error messages
GREEN='\033[0;32m'      # Green color for success messages
YELLOW='\033[0;33m'     # Yellow color for warnings or important information
BLUE='\033[0;34m'       # Blue color for general status messages
MAGENTA='\033[0;35m'    # Magenta color for additional emphasis
CYAN='\033[0;36m'       # Cyan color for general output and status
WHITE='\033[0;37m'      # White color for default text
BOLD='\033[1m'          # Bold text style for emphasis
UNDERLINE='\033[4m'     # Underlined text style for highlighting
RESET='\033[0m'         # Reset to default text style

# Function to print status messages
# Usage: print_status "Your message here"
print_status() {
    local message="$1"
    echo -e "${CYAN}${BOLD}${message}${RESET}"
}

# Function to print success message
# Usage: print_success "Your message here"
print_success() {
    local message="$1"
    echo -e "${GREEN}${BOLD}[✔] ${message}${RESET}"
}

# Function to print error message
# Usage: print_error "Your message here"
print_error() {
    local message="$1"
    echo -e "${RED}${BOLD}[✘] ${message}${RESET}"
}

# Function to execute commands and check their success
# Usage: execute_command "command_to_run" "Description of what the command does"
execute_command() {
    local command="$1"
    local message="$2"
    print_status "$message"
    eval "$command"
    if [ $? -eq 0 ]; then
        print_success "$message - Done"
    else
        print_error "$message - Failed"
    fi
}

# Function to safely add text to a file, ensuring no duplicate lines
# Usage: safe_append_to_file "text_to_add" "file_path"
safe_append_to_file() {
    local line="$1"
    local file="$2"
    local description="$3"

    # Check if file exists, if not, create it
    if [ ! -f "$file" ]; then
        print_error "File $file does not exist. Creating it."
        execute_command "sudo touch $file" "Creating $file"
    fi

    # Check if line already exists in the file
    if grep -Fxq "$line" "$file"; then
        print_status "Line already exists in $file. Skipping $description."
    else
        execute_command "echo \"$line\" | sudo tee -a $file > /dev/null" "$description"
    fi
}
