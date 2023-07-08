#!/bin/bash

# Find server's IPv4 address
ipv4_address=$(hostname -I | awk '{print $1}')

# Check if IPv4 address is in correct format
if [[ $ipv4_address =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
  echo "Server IPv4 address: $ipv4_address"
  echo "IPv4 address is in correct format."
else
  echo "Failed to retrieve server's IPv4 address or it is not in the correct format."
fi

