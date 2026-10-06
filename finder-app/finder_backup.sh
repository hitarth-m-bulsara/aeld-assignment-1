#!/bin/sh
# finder script for assignment 1

if [ $# -lt 2 ]
then
	echo "insufficient parameters provided" 
	echo "required parameters:"
	echo "filesdir -  the first argument is a path to a directory on the filesystem"
	echo "searchstr -  the second argument is a text string which will be searched within these files"
	exit 1
else
	#echo "Parameter count is all good"
	if [ -d $1 ]; then
		#echo "input is a directory"
		TOTAL_FILE_COUNT=$(grep -rinl $2 $1 | wc -l)
		TOTAL_MATCH_COUNT=$(grep -rin $2 $1 | wc -l)
		#echo ${TOTAL_FILE_COUNT}
		echo "The number of files are ${TOTAL_FILE_COUNT} and the number of matching lines are ${TOTAL_MATCH_COUNT}"
	else
		echo "filesdir is not a directory"
		exit 1
	fi
fi
