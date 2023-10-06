#!/bin/bash
if [ "$1"x = "hello"x ]
then
	echo "xxx, $1"
fi

if [ $2 -lt 18 ]
then
	echo "child"
elif [ $2 -lt 35 ]
then
	echo "teenager"
elif [ $2 -lt 60 ]
then
	echo "adult"	
else
	echo "older"
fi	
