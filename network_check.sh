#!/bin/bash
read -p "Enter host or IP to ping (default: 8.8.8.8): " HOST   # Prompt user for host/IP, saving input to HOST variable
HOST=${HOST:-8.8.8.8}                                         # Set default host to 8.8.8.8 if the input was left blank
echo "Pinging $HOST..."                                       # Print a status message indicating the ping test is starting
ping -c 3 "$HOST" &> /dev/null                                # Send 3 ping packets to the host, suppressing standard output/errors
if [ $? -eq 0 ]; then                                         # Check if the exit code of the ping command was 0 (success)
    echo "Network connection to $HOST is UP."                 # Print a success message if the host is reachable
else                                                          # Handle the case where the host could not be reached
    echo "Network connection to $HOST is DOWN or unreachable." # Print a failure message if the ping fails
fi                                                            # End of the if-else condition
