#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 01/06/2024
# Version: 1.0
# Description: Display current date and time
# Usage: ./main.sh

#------------------------------------------------------------------------------------#

# Create a variable to store the current date and time
current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

# Display the current date and time
echo "Current date and time: $current_datetime"

# Display the current date and time in a different format
# %Y - Year (4 digits, e.g., 2024)
# %y - Year (2 digits, e.g., 24 for 2024)
# %m - Month (01-12)
# %d - Day of the month (01-31)
# %H - Hour (00-23)
# %I - Hour (01-12)
# %M - Minute (00-59)
# %S - Second (00-59)
# %A - Full weekday name (e.g., Sunday)
# %a - Abbreviated weekday name (e.g., Sun)
# %B - Full month name (e.g., January)
# %b - Abbreviated month name (e.g., Jan)
# %c - Date and time representation appropriate for locale
# %D - Date in MM/DD/YY format
# %F - Date in YYYY-MM-DD format
# %T - Time in HH:MM
# %Z - Timezone name

#------------------------------------------------------------------------------------#

exit 0
