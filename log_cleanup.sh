#!/bin/bash
read -p "Log directory path: " LOG_DIR                      # Prompt the user for the target log directory path
read -p "Delete files older than how many days? " DAYS      # Prompt the user for the age threshold in days
[ ! -d "$LOG_DIR" ] && { echo "Error: Directory not found."; exit 1; } # Check if the directory exists; exit if it doesn't
echo "Cleaning up logs older than $DAYS days in $LOG_DIR..."  # Print a status message indicating cleanup is starting
find "$LOG_DIR" -type f -mtime +$DAYS -exec rm -f {} \;       # Find and delete files older than the specified days
echo "Log cleanup completed successfully."                    # Print a completion message
