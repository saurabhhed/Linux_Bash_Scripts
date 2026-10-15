#!/bin/bash
THRESHOLD=80                                                  # Set the disk usage warning threshold percentage
echo "Checking disk usage..."                                 # Print a starting status message
df -h | awk 'NR>1 {print $5 " " $1}' | while read output; do   # Loop through mounted partitions, skipping the header row
    usage=$(echo $output | awk '{print $1}' | tr -d '%')      # Extract the numerical usage percentage from the output
    partition=$(echo $output | awk '{print $2}')              # Extract the partition name/device
    if [ "$usage" -ge "$THRESHOLD" ]; then                    # Check if the usage is greater than or equal to the threshold
        echo "WARNING: Partition $partition is at ${usage}%!" # Print a warning alert if the threshold is exceeded
    else
        echo "OK: Partition $partition is at ${usage}%."      # Print a normal status message if usage is safe
    fi                                                        # End of the if-else condition
done                                                          # End of the while loop
