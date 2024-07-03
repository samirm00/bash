#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 03/07/2024
# Version: 1.0
# Description: This script is a simple calculator that can perform basic arithmetic operations.
# Usage: ./main.sh

#------------------------------------------------------------------------------------#
# Function to get a number from the user
get_number() {
    local NUMBER
    read -r -p "Please, Enter a number: " NUMBER
    echo "$NUMBER"
}

# Function to get an operator from the user
get_operator() {
    local OPERATOR
    read -r -p "Enter an operator (+, -, *, /): " OPERATOR
    echo "$OPERATOR"
}

# Function to perform the calculation
calculate() {
    local NUMBER1=$1
    local NUMBER2=$2
    local OPERATOR=$3
    local RESULT=0

    case $OPERATOR in
    "+")
        RESULT=$((NUMBER1 + NUMBER2))
        ;;
    "-")
        RESULT=$((NUMBER1 - NUMBER2))
        ;;
    "*")
        RESULT=$((NUMBER1 * NUMBER2))
        ;;
    "/")
        if [ "$NUMBER2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
            exit 1
        fi
        RESULT=$((NUMBER1 / NUMBER2))
        ;;
    *)
        echo "Invalid operator"
        exit 1
        ;;
    esac

    echo "$RESULT"
}

# Function do you want to calculate again
calculate_again() {
    local ANSWER
    read -r -p "Do you want to calculate again? (y/n): " ANSWER
    echo "$ANSWER"
}

while true; do
    NUMBER1=$(get_number)
    NUMBER2=$(get_number)
    OPERATOR=$(get_operator)
    RESULT=$(calculate "$NUMBER1" "$NUMBER2" "$OPERATOR")
    echo "The result is: $RESULT"
    ANSWER=$(calculate_again)
    if [ "$ANSWER" != "y" ] && [ "$ANSWER" != "Y" ]; then
        echo "Thank you for using the calculator."
        break
    fi
done

#------------------------------------------------------------------------------------#

exit 0
