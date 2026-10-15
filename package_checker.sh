#!/bin/bash
read -p "Enter package name to check: " PKG                   # Prompt the user for the package name and store it in PKG
dpkg -s "$PKG" &> /dev/null                                   # Check if the package is installed, redirecting output to suppress it
if [ $? -eq 0 ]; then                                         # Check if the exit code of the dpkg command was 0 (success)
    echo "Package '$PKG' is installed."                       # Print a success message if the package is installed
else                                                          # Handle the case where the exit code was non-zero
    echo "Package '$PKG' is NOT installed."                   # Print a notification if the package is not found
fi                                                            # End of the if-else condition
