#!/bin/bash
echo "Checking recent failed login attempts..."               # Print a header message indicating the check is starting
sudo lastb -n 10 || echo "No failed login logs available."    # Display the last 10 failed login attempts using lastb, handling errors gracefully
