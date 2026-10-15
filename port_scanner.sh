#!/bin/bash
read -p "Enter target host/IP: " HOST                    # Prompt user for the target IP address or hostname
read -p "Enter port to scan: " PORT                      # Prompt user for the specific port number to check
nc -z -w 2 "$HOST" "$PORT" &> /dev/null                  # Scan the port using netcat with a 2-second timeout, suppressing output
if [ $? -eq 0 ]; then                                    # Check if the exit status of the netcat command is 0 (success)
    echo "Port $PORT on $HOST is OPEN."                  # Print confirmation that the port is open
else                                                     # Handle the case where the command failed (port closed/unreachable)
    echo "Port $PORT on $HOST is CLOSED."                # Print notification that the port is closed or filtered
fi                                                       # End of the if-else condition
