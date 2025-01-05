#!/bin/bash
# 4. Countdown with User Input
# Asks the user for a duration in seconds and displays a countdown timer.

function timerr {
    echo "Enter time in seconds:"
    read time
    while [[ $time -gt 0 ]]; do
        echo -ne "\r$time seconds left"
        time=$((time-1))
        sleep 1
    done
    echo -e "\rTime's up!             "
}

timerr
