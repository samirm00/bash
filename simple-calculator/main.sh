#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 02/06/2024
# Version: 1.0
# Description: A simple calculator that takes two numbers and an operation as inputs and returns the result.
# Usage: ./main.sh

#------------------------------------------------------------------------------------#

calculate() {
    local num1=$1
    local operation=$2
    local num2=$3

    case "$operation" in
    +)
        echo $((num1 + num2))
        ;;
    -)
        echo $((num1 - num2))
        ;;
    \*)
        echo $((num1 * num2))
        ;;
    /)
        if [ "$num2" -ne 0 ]; then
            echo "scale=2; $num1 / $num2" | bc # To get the result with 2 decimal places
        else
            echo "Error: Division by zero!"
        fi
        ;;
    *)
        echo "Error: Invalid operation!"
        ;;
    esac

}

# Ask the user for the first number
echo "Enter the first number: "
read -r num1

# Ask the user for the operation
echo "Enter the operation (+, -, *, /): "
read -r operation

# Ask the user for the second number
echo "Enter the second number: "
read -r num2

# Call the calculate function
result=$(calculate "$num1" "$operation" "$num2")

# Print the result
echo "The result is: $result"
#------------------------------------------------------------------------------------#

exit 0
