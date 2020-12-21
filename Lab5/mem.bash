#!/bin/bash

declare -a array
declare -a mass=(1,2,3,4,5,6,7,8,9,10)

if [[ -f ./report.log ]]
then
	rm report.log
fi

count=0

while true
do
	array+=(${mass[@]})
	(( count++ ))
	if [[ $count -eq 10000 ]]
	then
		echo "${#array[@]}" >> report.log
		count=0
	fi
done
