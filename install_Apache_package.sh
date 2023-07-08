#!/bin/bash

# Check if Apache package is installed
if dpkg -s apache2 &> /dev/null; then
  echo "Apache is already installed."
else
  echo "Apache is not installed. Installing..."
  
  # Update package repository
#  sudo apt update
  
  # Install Apache package
  yum install apache2
  
  # Check if installation was successful
  if dpkg -s apache2 &> /dev/null; then
    echo "Apache has been installed successfully."
  else
    echo "Failed to install Apache."
  fi
fi

