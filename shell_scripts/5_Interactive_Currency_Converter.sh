#!/bin/bash
# 5. Interactive Currency Converter
# Converts an amount from one currency to another using real-time rates.

# Ensure dependencies are installed
sudo apt-get install jq bc

# Replace with your API key
API_KEY="0f4a16f8333c88a909bcf23a"
BASE_URL="https://v6.exchangerate-api.com/v6/$API_KEY/pair"

# Function to convert currency
convert_currency() {
    local from_currency=$1
    local to_currency=$2
    local amount=$3

    response=$(curl -s "$BASE_URL/$from_currency/$to_currency")
    rate=$(echo $response | jq -r '.conversion_rate')
    converted_amount=$(echo "$amount * $rate" | bc -l)
    echo "$amount $from_currency is equivalent to $converted_amount $to_currency"
}

# Main loop
while true; do
    echo "Enter the amount to convert:"
    read amount
    echo "Enter the currency code to convert from (e.g., USD):"
    read from_currency
    echo "Enter the currency code to convert to (e.g., EUR):"
    read to_currency

    convert_currency $from_currency $to_currency $amount

    echo "Do you want to perform another conversion? (yes/no)"
    read answer
    if [ "$answer" != "yes" ]; then
        break
    fi
done

echo "Thank you for using the currency converter!"

