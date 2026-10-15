#!/bin/bash
THRESHOLD=80                                                  # Set the CPU usage warning threshold percentage
echo "Checking CPU utilization..."                            # Print a starting status message
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')       # Extract the idle CPU percentage from the top command output
CPU_USAGE=$(awk "BEGIN {print 100 - $CPU_IDLE}")              # Calculate CPU usage by subtracting idle percentage from 100
CPU_INT=${CPU_USAGE%.*}                                       # Convert the floating-point number into an integer
if [ "$CPU_INT" -ge "$THRESHOLD" ]; then                      # Check if the CPU usage is greater than or equal to the threshold
    echo "WARNING: CPU usage is high at ${CPU_INT}%!"         # Print a warning alert if the threshold is exceeded
else
    echo "OK: CPU usage is normal at ${CPU_INT}%."            # Print a normal status message if usage is safe
fi                                                            # End of the if-else condition
