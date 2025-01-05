#!/bin/bash
# 7. Real-Time Fortune Teller
# Displays random fortune messages from an array.

fortunes=(
    "You will have a great day today!"
    "A surprise gift is headed your way."
    "Your hard work will soon pay off."
    "An exciting opportunity is waiting for you."
    "You will meet someone who will change your life."
    "Success is just around the corner."
    "You will overcome your challenges with ease."
    "Happiness is in your near future."
    "You will find clarity in a difficult situation."
    "A new adventure awaits you!"
)

display_fortune() {
    random_index=$((RANDOM % ${#fortunes[@]}))
    echo "🔮 ${fortunes[$random_index]}"
}

while true; do
    display_fortune
    echo "Would you like another fortune? (yes/no)"
    read answer
    if [ "$answer" != "yes" ]; then
        echo "Thank you for visiting the fortune teller!"
        break
    fi
done
