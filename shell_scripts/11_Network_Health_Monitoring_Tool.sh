#!/bin/bash
# 11. Network Health Monitoring Tool
# Pings predefined IPs or domains, logs failures, and optionally sends alerts.

# Define the hosts to monitor
HOSTS=("8.8.8.8" "1.1.1.1" "example.com")
LOG_FILE="network_health.log"

# Check network health for each host
for HOST in "${HOSTS[@]}"; do
    if ping -c 1 "$HOST" &>/dev/null; then
        echo "$(date): $HOST is reachable." >> "$LOG_FILE"
    else
        echo "$(date): $HOST is unreachable!" >> "$LOG_FILE"
        # Optional: Add email alert using `mailx` (requires setup)
        echo "$HOST is unreachable" | mail -s "Network Alert: $HOST Down" admin@example.com
    fi
done
