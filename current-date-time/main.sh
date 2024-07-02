#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 27/06/2024
# Version: 1.0
# Description: This script will print the current date and time.
# Usage: ./main.sh

#------------------------------------------------------------------------------------#

DATETIME=$(date +"%Y-%m-%d %H:%M:%S") # command substitution

echo "${DATETIME}" # it is a good idea to use ${} to avoid confusion
# %Y : 2024
# %y : 24
# %m : 06
# %d : 27
# %H : 24-hour format
# %I : 12-hour format
# %M : minutes
# %S : seconds

#------------------------------------------------------------------------------------#

exit 0
