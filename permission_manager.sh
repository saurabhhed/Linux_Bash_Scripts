#!/bin/bash
read -p "Target file or directory path: " TARGET             # Prompt the user for the target path and store it in TARGET
read -p "Permission mode (e.g., 755, 644): " MODE             # Prompt the user for the permission mode and store it in MODE
[ ! -e "$TARGET" ] && { echo "Error: Target does not exist."; exit 1; } # Check if the target exists; exit if it doesn't
read -p "Apply recursively? (y/n): " REC                     # Prompt the user to decide if permissions should apply recursively
if [[ "$REC" =~ ^[Yy]$ ]]; then                               # Check if the user confirmed recursive application
    sudo chmod -R "$MODE" "$TARGET" && echo "Permissions updated recursively for $TARGET." || echo "Failed to update permissions." # Apply recursive chmod and check status
else                                                          # Handle non-recursive application
    sudo chmod "$MODE" "$TARGET" && echo "Permissions updated for $TARGET." || echo "Failed to update permissions." # Apply standard chmod and check status
fi                                                            # End of the if-else condition
