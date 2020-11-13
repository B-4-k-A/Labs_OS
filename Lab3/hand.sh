#!/bin/bash
(tail -f pipe) |
while true
do
	pid=$(read line)
	echo "$pid"
	if [[ $pid -gt 1000 ]]
	then
		genpid = $(cat .pid)
		kill $genpid
		echo "Потрачено" >> pids.log
		killall tail
		exit
	fi
#sleep 3
done
