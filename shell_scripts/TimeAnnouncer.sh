#!/bin/bash
echo "Please enter your name"
read name
while true; do
        timest=$(date "+%A, %d %B %Y %I:%M %p")
        echo "Good morning, $name! it's $timest."
        sleep 60
done
