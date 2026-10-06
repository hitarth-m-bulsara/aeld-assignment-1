#!/bin/sh
# writer script for assignment 1
if [ $# -lt 2 ]
then
        echo "insufficient parameters provided"
        echo "required parameters:"
        echo "writefile -  the first argument is a full path to a file (including filename) on the filesystem"
        echo "writestr - the second argument is a text string which will be written within this file"
        exit 1
else
        echo "Parameter count is all good"
        if [ -d $1 ]; then
                echo "input is a directory"
                TOTAL_FILE_COUNT=$(grep -rinl $2 $1 | wc -l)
                TOTAL_MATCH_COUNT=$(grep -rin $2 $1 | wc -l)
                #echo ${TOTAL_FILE_COUNT}
                echo "The number of files are ${TOTAL_FILE_COUNT} and the number of matching lines are ${TOTAL_MATCH_COUNT}"
        else
                echo "filesdir is not a directory"
                exit 1
        fi
fi
