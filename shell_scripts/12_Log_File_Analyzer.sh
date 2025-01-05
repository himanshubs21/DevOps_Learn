#!/bin/bash
# 12. Log File Analyzer
# Analyzes a log file to extract frequent IPs, URLs, and error codes.

# Prompt for the log file path
read -p "Enter the path to the log file: " log_file

# Check if the log file exists
if [ ! -f "$log_file" ]; then
    echo "Log file not found."
    exit 1
fi

# Most frequent IPs
echo "Most frequent IP addresses:"
awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -10

# Most frequent request URLs
echo -e "\nMost frequent request URLs:"
awk '{print $7}' "$log_file" | sort | uniq -c | sort -nr | head -10

# Error code counts
echo -e "\nError code counts:"
awk '{print $9}' "$log_file" | grep -E '^[45][0-9]{2}$' | sort | uniq -c | sort -nr
