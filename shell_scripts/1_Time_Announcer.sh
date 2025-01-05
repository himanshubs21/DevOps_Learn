#!/bin/bash
# 1. Time Announcer
# Displays a personalized greeting along with the current time every minute.

echo "Please enter your name:"
read name

while true; do
    timest=$(date "+%A, %d %B %Y %I:%M %p") # Get the current time
    echo "Good morning, $name! It's $timest."
    sleep 60
done
