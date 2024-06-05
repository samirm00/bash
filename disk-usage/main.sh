#!/opt/homebrew/bin/bash

# Author: Samir M.
# Date: 05/06/2024
# Version: 1.0
# Description: A script to display disk usage statistics.
# Usage: ./main.sh [directory]

#------------------------------------------------------------------------------------#

# Check if the user provided a directory as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 [directory]"
    echo "Displays disk usage statistics for the specified directory."
    echo "If no directory is specified, it defaults to the root filesystem."
    directory="/"
else
    directory="$1"
fi

# Display the header
echo "Disk Usage Statistics for $directory"

# Display the total disk usage in a human-readable format
echo -e "\nTotal disk usage (du -sh):"
du -sh "$directory"
## -sh (ummary and human-readable) option to display the total disk usage in a human-readable format.

# Display detailed disk usage by file and directory
echo -e "\nDetailed disk usage (du -h --max-depth=1):"
# -e option to enable interpretation of backslash escapes
du -h --max-depth=1 "$directory"
## -h (uman-readable) option to display disk usage in a human-readable format.
## --max-depth=1 option to limit the depth of the output to the specified level.

# Display the disk usage summary of all filesystems
echo -e "\nDisk usage summary of all filesystems (df -h):"
df -h
## -h (human-readable) option to display disk usage in a human-readable format.

# Additional statistics for root filesystem
echo -e "\nInode usage (df -i):"
df -i
# df command displays the inode usage statistics for the filesystems.
# -i option to display inode usage statistics.

# Display the top 10 largest directories/files within the specified directory
echo -e "\nTop 10 largest directories/files (du -ah $directory | sort -rh | head -n 10):"
du -ah "$directory" | sort -rh | head -n 10
# du command to display disk usage statistics for files and directories.
# -a (all) option to include files and directories in the output.
# -h (human-readable) option to display disk usage in a human-readable format.
# sort command to sort the output in reverse order based on the disk usage.
# -r (reverse) option to sort in reverse order.
# -h (human-numeric-sort) option to sort human-readable numbers.
# head command to display the top 10 entries in the sorted output.
# -n (lines) option to specify the number of lines to display.
# | (pipe) to redirect the output of one command to another.

echo -e "\nScript execution completed."

#------------------------------------------------------------------------------------#

exit 0
