#!/bin/bash
filesdir=$1
searchstr=$2
# $# is number of parameters passed to the script
#-ne is not equal
if [ $# -ne 2 ]; then
	echo "$0 : Error: Should have given exactly 2 parameters"
	exit 1
fi

#change to the directory we want to search
# $? is exit status of most recent process, with 0 being success
#and not zero being a failure
#pwd
curDir=/home/vboxuser/School/LinuxSystemProgramming/Assignment1/assignment-1-dnovaria/finder-app
#echo "curdir : $curDir"

cd $curDir$filesdir
if [ $? -eq 0 ]; then
	echo "Found Directory"
else
	echo "The ${filesdir} directory was not found"
	exit 1
fi

numLines=$(grep -r $2 * | wc -l)
numFiles=$(grep -rl $2 * | wc -l)
echo The number of files are $numFiles and the number of matching lines are $numLines
#testStringtwenty
