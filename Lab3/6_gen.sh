#!/bin/bash

while true
do
	read LINE
	if [[ "$LINE" == "TERM" ]]
	then
		kill -SIGTERM $(cat .pid)
		exit
	fi
	if [[ "$LINE" == "+" ]]
	then
		kill -USR1 $(cat .pid)
		continue
	fi
	if [[ "$LINE" == "*" ]]
	then
		kill -USR2 $(cat .pid)
		continue
	fi
done

