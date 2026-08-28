#!/usr/bin/env bash

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ] || [ -z "$searchstr" ]; then
    echo -e "Invalid Arguments.\nUsage: $0 <files_directory> <search_string>"
    exit 1
fi

file_num=$(find "$filesdir" -maxdepth 1 -type f -printf x | wc -c)
line_num=$(grep -rh "$searchstr" "$filesdir" | wc -l)

echo "The number of files are ${file_num} and the number of matching lines are ${line_num}."

exit 0