#!/bin/bash
#./writer.sh $(pwd)/example.txt to use current dir
writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
	echo "$0 : The number of arguments must be exactly 2"
	exit 1
fi

curDir=/home/vboxuser/School/LinuxSystemProgramming/Assignment1/assignment-1-dnovaria/finder-app
echo "curdir : $curDir"

dirpath=$(dirname "$1")
#cd $curDir$dirpath
mkdir -p $curDir$dirpath
echo "writer.sh mkdir path: $curDir$dirpath"
echo "$? : mkdir result"
touch $curDir$1
echo $?
echo "$2" > $curDir$1

if [ $? -ne 0 ]; then
	echo "$0 : Error could not write to file"
	exit 1
fi

