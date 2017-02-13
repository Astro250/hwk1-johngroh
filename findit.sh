#!/bin/bash

# Here's the first line of code to write to do the first homework assignment.
#
# In /scratch2/scratchdirs/nugent/astro250/hwk1 we have a set of fits files as well as catalogs
# from these fits files. They are named the same save for the suffix (.fits or .cat). 
# Some of the .cat files are missing. Write a bash shell script which takes as input 
# the directory name and prints out the names of the .fits files which are missing their 
# corresponding .cat files. If the directory does not exist, the code should print
# out an error statement accordingly.
#

dir=$1

# check if the directory exists
if [ ! -d "$dir" ]; then
    echo "Error: directory does not exist."
fi

# loop over files in that directory (extra slashes are fine)
for file in $dir/*.fits; do
    # strip the .fits extension, add a .cat, and see if that's there
    if [ ! -f "${file%.fits}.cat" ]; then
	echo "File $file does not have a corresponding .cat file."
    fi
done