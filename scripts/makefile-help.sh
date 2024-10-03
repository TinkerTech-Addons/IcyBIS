#!/bin/bash

# This script displays help information for the Makefile.
# Usage: ./help.sh Makefile

# Set colors for output
color_off='\033[0m'
target_color='\033[36m'
variable_color='\033[93m'
grey='\033[90m'
space_length=10

# Main function to display help information
help() {
    # Display usage information
    echo "Usage:"
    printf "  make %b[target]%b %b[variables]%b\n\n" "$target_color" "$color_off" "$variable_color" "$color_off"
    
    # Display targets information
    _help_targets "$1"
    
    # Display variables information
    _help_variables "$1"
}

# Function to display targets information
_help_targets() {
    local pattern
    pattern='^[a-zA-Z0-9._-]+:.*?##.*$'
    
    echo "Targets"
    grep -E "$pattern" "$1" | sort | while read -r line; do
        target=${line%%:*}
        description=${line#*## }
        printf "  %b%-${space_length}s: %b%s\n" "$target_color" "$target" "$color_off" "$description"
    done
    echo ""
}

# Function to display variables information
_help_variables() {
    local pattern
    pattern='^[a-zA-Z0-9_-]+ [:?!+]?=.*?##.*$'
    
    echo "Variables"
    grep -E "$pattern" "$1" | sort | while read -r line; do
        variable=${line%% *}
        default=${line#*= }
        default=${default%%##*}
        description=${line##*## }
        printf "  %b%-${space_length}s: %b%s %b(default: %s)%b\n" "$variable_color" "$variable" "$color_off" "$description" "$grey" "$default" "$color_off"
    done
    echo ""
}

# Call main function
help "$1"

# Return exit code indicating success
exit 0