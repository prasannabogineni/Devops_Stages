#!/bin/bash

# Print hostname
echo "Hostname: $(hostname)"

# Print operating system
echo "Operating System: $(uname -s)"

# Print kernel version
echo "Kernel Version: $(uname -r)"

# Print CPU information
echo "CPU Information:"
lscpu | grep 'Model name\|Architecture\|CPU(s)'

# Print memory information
echo "Memory Information:"
free -h | grep 'Mem'

# Print disk usage
echo "Disk Usage:"
df -h

