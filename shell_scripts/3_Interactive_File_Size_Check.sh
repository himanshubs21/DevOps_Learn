#!/bin/bash
# 3. Interactive File Size Check
# Prompts the user for a file path and displays the file size in real-time.

# Function to get file size
get_file_size() {
    if [ -e "$1" ]; then
        du -sh "$1" | awk '{print $1}'
    else
        echo "File does not exist"
    fi
}

# Prompt user for a file path
echo -n "Enter the file path: "
stty -echo -icanon time 0 min 1
file_path=""
while true; do
    char=$(dd bs=1 count=1 2>/dev/null)
    if [ -z "$char" ]; then
        continue
    fi
    if [ "$char" = $'\177' ]; then # Handle backspace
        if [ ${#file_path} -gt 0 ]; then
            file_path="${file_path:0:${#file_path}-1}"
            echo -ne "\b \b"
        fi
    elif [ "$char" = $'\n' ]; then
        break
    else
        file_path+="$char"
        echo -n "$char"
    fi
    clear
    echo -n "Enter the file path: $file_path"
    echo
    echo "File size: $(get_file_size "$file_path")"
done
stty sane
echo
echo "Final file path: $file_path"
echo "Final file size: $(get_file_size "$file_path")"
