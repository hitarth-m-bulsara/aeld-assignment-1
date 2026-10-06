#!/bin/sh
# writer script for assignment 1

if [ $# -lt 2 ]
then
    echo "insufficient parameters provided"
    echo "required parameters:"
    echo "writefile - the first argument is a full path to a file"
    echo "writestr - the second argument is a text string to write to the file"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it does not exist
write_dir=$(dirname "$writefile")

if ! mkdir -p "$write_dir"
then
    echo "Could not create directory path: $write_dir"
    exit 1
fi

# Write the string to the file, overwriting if it already exists
if ! echo "$writestr" > "$writefile"
then
    echo "Could not create file: $writefile"
    exit 1
fi
