#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 02/06/2024
# Version: 1.0
# Description: Create a simple calculator
# Usage: ./main.sh

#------------------------------------------------------------------------------------#

# Function to calculate the result
calculate() {
    local num1=$1
    local operator=$2
    local num2=$3

    case $operator in
    +)
        echo "$((num1 + num2))"
        ;;
    -)
        echo "$((num1 - num2))"
        ;;
    \*)
        echo "$((num1 * num2))"
        ;;
    /)
        if [ "$num2" -ne 0 ]; then
            echo "$((num1 / num2))"
        else
            echo "Error: Division by zero"
        fi
        ;;
    *)
        echo "Error: Invalid operator"
        ;;
    esac
}

# Ask the user to enter the numbers and operator
echo "Enter first number:"
read -r num1

echo "Enter an operator (+, -, *, /):"
read -r operator

echo "Enter second number:"
read -r num2

# Call the calculate function and store the result
result=$(calculate "$num1" "$operator" "$num2")

# Print the result
echo "The result is: $result"
#------------------------------------------------------------------------------------#

exit 0
