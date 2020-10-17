#!/bin/bash 
files=$(ls /proc)
for file in $(echo "$files" | grep -E '[0-9]+')
do 
	if ! [ -f "/proc/$file/status" ]
	then
		continue;
	else
		PID=$file
		PPD=$(grep "^PPid:" "/proc/$file/status" | awk '{print $2}')
		EXEC=$(grep "sum_exec_runtime" "/proc/$file/sched" | awk '{print $3}')
		SWITCHES=$(grep "nr_switches" "/proc/$file/sched" | awk '{print $3}')
		ART=0
		if [ "$SWITCHES" -ne 0 ]
		then
		ART=$(echo "$EXEC"/"$SWITCHES" | bc -l)
		fi 
		echo "ProcessID=$PID $PPD Average_Running_Time=$ART"
	fi
done | sort -nk 3 | awk '{printf "%s : Parent_ProcessID=%s : %s\n", $1, $2, $3}'>res4.lst
