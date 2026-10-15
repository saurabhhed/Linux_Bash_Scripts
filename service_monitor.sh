#!/bin/bash
read -p "Enter service name to monitor (e.g., ssh, nginx): " SERVICE # Prompt user for the service name and store it in SERVICE
systemctl is-active --quiet "$SERVICE"                      # Check if the service is active, keeping output quiet
if [ $? -eq 0 ]; then                                         # Check if the exit status is 0 (meaning the service is running)
    echo "Service '$SERVICE' is running."                     # Print confirmation that the service is running
else                                                          # Handle the case where the service is inactive or stopped
    echo "WARNING: Service '$SERVICE' is NOT running!"        # Print a warning alert if the service is down
fi                                                            # End of the if-else condition
