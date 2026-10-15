#!/bin/bash
echo "=== System Information Report ==="                       # Print a header title for the report
echo "OS Version: $(cat /etc/os-release | grep PRETTY_NAME | cut -d'"' -f2)" # Extract and display the friendly operating system name
echo "Kernel Version: $(uname -r)"                              # Display the active Linux kernel version
echo "Hostname: $(hostname)"                                    # Display the system's network hostname
echo "CPU Info: $(lscpu | grep 'Model name' | awk -F: '{print $2}' | xargs)" # Extract and clean up the CPU model name
echo "Memory (RAM): $(free -h | grep Mem | awk '{print $3 " used / " $2 " total"}')" # Display current RAM usage versus total RAM
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 " used / " $2 " total (" $5 " used)"}')" # Display root disk space usage summary
echo "IP Address: $(hostname -I | awk '{print $1}')"              # Display the primary local IP address of the machine
