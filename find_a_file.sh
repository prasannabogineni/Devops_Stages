#!/bin/bash

# Define the directory to search
directory="/home/ec2-user"

# Prompt the user to enter a file name
read -p "Enter the file name: " filename

# Search for the file in the directory
result=$(find "$directory" -type f -name "$filename")

# Check if the file was found
if [ -z "$result" ]; then
  echo "File not found."
else
  echo "File found: $result"
fi

