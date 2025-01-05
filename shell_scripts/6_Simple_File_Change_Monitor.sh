#!/bin/bash
# 6. Simple File Change Monitor
# Monitors a file for changes and displays a message when modified.

read -p "Enter the file path to monitor: " FILE_TO_MONITOR

if [ ! -f "$FILE_TO_MONITOR" ]; then
    echo "Error: File not found!"
    exit 1
fi

get_modification_time() {
    stat -c %Y "$FILE_TO_MONITOR"
}

last_mod_time=$(get_modification_time)

echo "Monitoring changes to: $FILE_TO_MONITOR"
while true; do
    current_mod_time=$(get_modification_time)
    if [ "$current_mod_time" != "$last_mod_time" ]; then
        echo "The file $FILE_TO_MONITOR has been modified."
        last_mod_time=$current_mod_time
    fi
    sleep 2
done
