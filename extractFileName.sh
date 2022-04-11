#!/bin/sh
#############################################################
# @author Mia Hunt
# @github kaykay38
#############################################################

echo "This script renames files and directories without the extensions.\n"
declare -i fileCount=0
for file in "$1/*"
	do
		fileCount+=1
		echo "\nFile #$fileCount in $1\nCurrent: $file"
		f="$(basename -- $file)"
		name="${f%%.*}"
		mv "$file" "$1/$name" && echo "Renamed $f to $name"
	done
