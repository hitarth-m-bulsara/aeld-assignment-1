#!/bin/sh
# finder script for assignment 1

if [ $# -lt 2 ]
then
    echo "insufficient parameters provided"
    echo "required parameters:"
    echo "filesdir - the first argument is a path to a directory on the filesystem"
    echo "searchstr - the second argument is a text string which will be searched within these files"
    exit 1
fi

filesdir=$1
searchstr=$2

if [ ! -d "$filesdir" ]
then
    echo "filesdir is not a directory"
    exit 1
fi

TOTAL_FILE_COUNT=$(find "$filesdir" -type f | wc -l)
TOTAL_MATCH_COUNT=$(grep -r -n -i "$searchstr" "$filesdir" | wc -l)

echo "The number of files are ${TOTAL_FILE_COUNT} and the number of matching lines are ${TOTAL_MATCH_COUNT}"
