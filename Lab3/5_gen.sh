#!/bin/bash

mkfifo queue

while true;
do
	read LINE
	echo "$LINE"
	if [[ "$LINE" == "QUIT" ]]
	then
		echo "$LINE" > queue
		echo "QUIT"
		#exit 0
	elif [[ ($LINE != [[::digit::]]*) && ("$LINE" != "+") && ("$LINE" != "*") ]]
	then
		echo "ERROR" > queue
		echo "Error! Not a number"
		#exit 1
	else
		echo "$LINE" > queue
	fi
done
