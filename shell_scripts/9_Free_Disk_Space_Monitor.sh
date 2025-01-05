#!/bin/bash
# 9. Free Disk Space Monitor
# Checks and displays the free disk space on a specific partition periodically.

# Prompt for the partition to monitor
read -p "Enter the partition you want to monitor (e.g., /): " target_disk

# Function to display free disk space
disk() {
    echo "Available space on $target_disk: $(df -h | grep "$target_disk" | awk '{print $4}')"
}

# Monitor free space every minute
while true; do
    disk
    sleep 60
done
