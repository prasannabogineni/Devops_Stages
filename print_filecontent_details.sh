#!/bin/bash

# Function to print file details

print_file_details() {
    file_name="$1"

    # Check if the file exists
    if [ -f "$file_name" ]; then
        echo "File: $file_name"
        echo "---------------------"
        echo "Number of lines: $(wc -l < "$file_name")"
        echo "Number of words: $(wc -w < "$file_name")"
        echo "Number of characters: $(wc -m < "$file_name")"
        echo "---------------------"
        echo "File content:"
        echo "---------------------"
        cat "$file_name"
    else
        echo "File '$file_name' does not exist."
    fi
}

# Prompt user for file name
read -p "Enter the file name: " file_name

# Call the function to print file details
print_file_details "$file_name"

