#!/bin/bash
files=$(ls /sbin)
for file in $(echo -e "$files")
do
ps aux | grep $file | awk '{print $2}' >> process2.lst
done
