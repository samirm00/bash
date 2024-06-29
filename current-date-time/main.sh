#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 27/06/2024
# Version: 1.0
# Description: This script will print the current date and time.
# Usage: ./main.sh

#------------------------------------------------------------------------------------#

NOW=$(date +"%Y-%m-%d %H:%M:%S")

echo "$NOW"
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
