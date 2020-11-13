#!/bin/bash

echo $$ > .pid
x=1

term() {
	echo "Stop by generator"
	exit
}

usr1() {
	op="+"
}

usr2() {
	op="*"
}

trap 'usr1' USR1
trap 'usr2' USR2
trap 'term' SIGTERM
while true
do
	case $op in
	"+") let x=$x+2
			echo $x ;;
	"*") let x=$x*2
			echo $x ;;
	esac
	sleep 1
done
