#!/bin/bash
echo "Top running processes by CPU and Memory usage:"              # Print a header message
echo "--------------------------------------------------------"   # Print a visual separator line
ps -eo pid,ppid,%cpu,%mem,comm --sort=-%cpu | head -n 11        # List the top 10 processes sorted by CPU usage in descending order
