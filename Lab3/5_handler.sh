#!/bin/bash

op="+"
res=1

(tail -f queue) |
while true
do
	read LINE
	if [[ "$LINE" == "QUIT" ]]
	then
		rm -f queue
		echo "exit"
		killall tail
		exit 0
	elif [[ "$LINE" == "ERROR" ]] 
	then
		rm -f queue
		echo "Error! Not a number"
		exit 1
	else
		if [[ "$LINE" == "+" || "$LINE" == "*" ]]
		then
			op="$LINE"
		fi
		if [[ "$LINE" == "+" ]]
			then
				res=$(echo "$res $LINE" | awk '{print $1 + $2}')
				echo "$res"
			else
				res=$(echo "$res $LINE" | awk '{print $1 * $2}')
				echo "$res"
			fi
		fi
	fi
done
