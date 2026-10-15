#!/bin/bash
echo "Starting system update..."                              # Print a status message indicating the update process is starting
sudo apt update && sudo apt upgrade -y                        # Update package lists and upgrade all installed packages automatically
sudo apt autoremove -y                                        # Remove unused packages and dependencies to free up disk space
echo "System update and cleanup completed successfully."      # Print a completion message
