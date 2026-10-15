#!/bin/bash

# Prompt the user to enter the path of the backup file and save it in the BACKUP variable
read -p "Backup file (.tar.gz): " BACKUP  

# Prompt the user to enter the target directory path and save it in the DEST variable
read -p "Restore destination: " DEST     

# Check if the backup file exists; if not, print an error and exit
[ ! -f "$BACKUP" ] && { echo "Error: File not found."; exit 1; }  

# Create the destination directory if it does not already exist
mkdir -p "$DEST"                                              

# Print a status message indicating the restoration process has started
echo "Restoring..." 

# Extract the archive to the destination; print success or failure based on the result
tar -xzf "$BACKUP" -C "$DEST" && echo "Done! Restored to $DEST" || echo "Extraction failed."  
