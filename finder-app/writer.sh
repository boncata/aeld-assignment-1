#!/usr/bin/env bash

writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo -e "Invalid Arguments.\nUsage: $0 <write_file> <write_string>"
    exit 1
fi

if [ ! -f "$writefile" ]; then
    mkdir -p "$(dirname "$writefile")"
    touch "$writefile"
fi

echo "$writestr">"$writefile"
exit 0