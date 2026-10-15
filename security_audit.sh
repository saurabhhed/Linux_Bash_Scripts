#!/bin/bash
echo "Running basic security audit..."                        # Print a status message indicating the audit is starting
[ "$EUID" -ne 0 ] && echo "Warning: Not running as root. Some checks may require root permissions." # Warn if not run as root
echo "--- Checking UFW Firewall Status ---"                   # Print section header for firewall check
sudo ufw status                                               # Check and display the UFW firewall status
echo "--- Checking Users with UID 0 (Root Privileges) ---"    # Print section header for superuser check
awk -F: '($3 == 0) {print $1}' /etc/passwd                    # List all usernames that have UID 0 (superuser access)
echo "--- Checking Empty Password Accounts ---"               # Print section header for password check
sudo awk -F: '($2 == "") {print $1}' /etc/shadow 2>/dev/null || echo "Shadow file access restricted." # Detect accounts with empty passwords
echo "Security audit completed."                              # Print a completion message
