#!/bin/bash
# 8. Simple System Info Display
# Displays essential system information like current user, hostname, and OS version in real-time.

# Function to display system information
dis() {
    echo "Current user: $(whoami)"           # Prints the logged-in username
    echo "Hostname: $(hostname)"            # Prints the system's hostname
    echo "Kernel version: $(uname -r)"      # Prints the kernel version
}

# Infinite loop to update the information every minute
while true; do
    dis
    sleep 60
done

