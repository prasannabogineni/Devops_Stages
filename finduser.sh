#!/bin/bash

# Prompt the user to enter a username
read -p "Enter a username: " username

# Validate the username
if [[ "$username" =~ ^[a-zA-Z]+$ ]]; then
  echo "Valid username: $username"
else
  echo "Invalid username. The username should consist of only lowercase or uppercase letters."
fi

