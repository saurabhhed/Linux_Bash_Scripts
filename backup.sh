#!/bin/bash 

# Backup Script 
# Author: Saurabh Y. H. 
# Description: Creates a backup of a directory with timestamp. 

# Source directory path 
SOURCE_DIR="/home/user/data" 

# Destination Backup directory path
BACKUP_DIR="/home/user/backups" 

# Create backup directory if it doesn't exist 
mkdir -p $BACKUP_DIR 

# Create backup file with current date and time 
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz" 

# Backup process
tar -czf $BACKUP_FILE $SOURCE_DIR 

# Check status 
if [ $? -eq 0 ]; 
then 
    echo "Backup completed successfully: $BACKUP_FILE" 
 else 
    echo "Backup failed!" 
fi
