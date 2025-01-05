#!/bin/bash
# 2. System Uptime Monitor
# Displays the system uptime and refreshes every 5 seconds.

while true; do
    echo $(uptime) # Fetch system uptime
    sleep 5
done
