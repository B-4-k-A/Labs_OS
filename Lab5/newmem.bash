#!/bin/bash

declare -a array
declare -a mass=(1,2,3,4,5,6,7,8,9,10)


while true
do
	array+=(${mass[@]})
	if [[ ${#array[@]} -gt $1 ]]
	then
		exit 0
	fi
done
