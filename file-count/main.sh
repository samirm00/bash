#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 04/06/2024
# Version: 1.0
# Description: Count the number of files in a directory
# Usage: ./main.sh path/to/directory

#------------------------------------------------------------------------------------#

# Function to display usage
usage() {
    echo "Usage: $0 DIRECTORY"
    exit 1
}

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Error: Exactly one argument is required."
    usage
fi

# Assign the first argument to DIR variable
DIR=$1

# Check if the specified path is a directory
if [ ! -d "$DIR" ]; then
    echo "Error: $DIR is not a directory."
    exit 1
fi

# Count the number of files in the specified directory
FILE_COUNT=$(find "$DIR" -type f | wc -l)

# Display the count
echo "The number of files in directory $DIR is: $FILE_COUNT"

#------------------------------------------------------------------------------------#

exit 0
