#!/bin/bash
read -p "Action (add/del): " ACTION                        # Prompt user for whether to add or delete a user
read -p "Username: " USERNAME                             # Prompt user for the target username
if [ "$ACTION" == "add" ]; then                           # Check if the desired action is to add a user
    sudo useradd -m "$USERNAME" && echo "User $USERNAME created." || echo "Failed to create user." # Create user with home directory and check status
elif [ "$ACTION" == "del" ]; then                         # Check if the desired action is to delete a user
    sudo userdel -r "$USERNAME" && echo "User $USERNAME deleted." || echo "Failed to delete user." # Delete user and home directory, check status
else                                                      # Handle any invalid action input
    echo "Invalid action. Use 'add' or 'del'."            # Print an error message for invalid choices
fi                                                        # End of the if-else condition
