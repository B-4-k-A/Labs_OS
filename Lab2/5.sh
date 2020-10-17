#!/bin/bash
all=($(./max.sh))

for i in ${all[@]}
do
	average=0
	cnt=$(grep "Parent_ProcessID=$i " "res4.lst" | wc -l)
	grep "Parent_ProcessID=$i " "res4.lst"
	averages=$(grep "Parent_ProcessID=$i " "res4.lst" | awk -F "Average_Running_Time=" '{print $2}')
	for j in $averages
	do
		average=$(echo "$average + $j" | bc -l)
	done
	echo Average_Sleeping_Children_of_ParentID=$i is $(echo "$average/$cnt" | bc -l)
done > res5.lst
