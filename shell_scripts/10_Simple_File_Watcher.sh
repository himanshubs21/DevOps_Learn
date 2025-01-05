#!/bin/bash
# 10. Simple File Watcher
# Monitors a file for changes and notifies if it is modified.

# Prompt for the file to monitor
read -p "Enter the path to the file you want to monitor: " filename

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File not found."
    exit 1
fi

# Function to get the last modification time
mod_time() {
    stat -c "%Y" "$filename"
}

# Initialize last modification time
last_mod_time=$(mod_time)
echo "Monitoring $filename for changes..."

# Monitor the file for changes
while true; do
    current_mod_time=$(mod_time)
    if [ "$current_mod_time" != "$last_mod_time" ]; then
        echo "File modified at $(date)"
        last_mod_time="$current_mod_time"
    fi
    sleep 3
done
