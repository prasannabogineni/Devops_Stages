#!/bin/bash

# Define the directory to search
directory="/home/ec2-user"

# Find all .txt files that are 10 days old or older
files=$(find "$directory" -name "*.txt" -type f -mtime +10)

# Check if any files were found
if [ -z "$files" ]; then
  echo "No files found."
else
  # Prompt the user for confirmation before deleting the files
  echo "The following files will be deleted:"
  echo "$files"
  read -p "Are you sure you want to delete these files? (y/n): " choice

  if [ "$choice" == "y" ] || [ "$choice" == "Y" ]; then
    # Delete the files
    echo "Deleting files..."
    rm $files
    echo "Files deleted."
  else
    echo "Operation canceled."
  fi
fi


