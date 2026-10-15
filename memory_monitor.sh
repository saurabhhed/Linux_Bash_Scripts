#!/bin/bash
THRESHOLD=80                                                  # Set the RAM usage warning threshold percentage
echo "Checking memory usage..."                               # Print a starting status message
TOTAL_MEM=$(free | grep Mem | awk '{print $2}')               # Get total RAM in KB from the free command
USED_MEM=$(free | grep Mem | awk '{print $3}')                # Get used RAM in KB from the free command
MEM_USAGE=$(( USED_MEM * 100 / TOTAL_MEM ))                   # Calculate the percentage of used RAM
if [ "$MEM_USAGE" -ge "$THRESHOLD" ]; then                    # Check if the RAM usage is greater than or equal to the threshold
    echo "WARNING: RAM usage is high at ${MEM_USAGE}%!"       # Print a warning alert if the threshold is exceeded
else
    echo "OK: RAM usage is normal at ${MEM_USAGE}%."          # Print a normal status message if usage is safe
fi                                                            # End of the if-else condition
