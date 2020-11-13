#!/bin/bash
mkfifo pipe
echo "" > pids.log
echo $$ > .pid
while true
do
	for pid in $(ps -aux --no-header | awk '{printf("%s\n", $2)}')
	do
		echo "$pid работает и скоро поедет в отпуск" >> pids.log
		echo "$pid" >> pipe
		echo "$pid"
	done
done
