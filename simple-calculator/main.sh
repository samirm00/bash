#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 03/07/2024
# Version: 1.0
# Description: This script is a simple calculator that can perform basic arithmetic operations.
# Usage: ./main.sh

#------------------------------------------------------------------------------------#
# Function to get a number from the user 
# -p flag is used to prompt the user for input
# -r flag is used to prevent backslashes from being interpreted as escape characters
# local keyword is used to declare a variable that is only accessible within the function
# "$VARIBALE" is used to access the value of a variable
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
# $1, $2, $3 are positional parameters that represent the first, second, and third arguments passed to the function
# -eq flag is used to check if two numbers are equal
# $((...)) is used to perform arithmetic operations
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
