#!/bin/bash

echo $$ > pid1
x=10
y=4

while true
do
	let x=$x*$y
done
