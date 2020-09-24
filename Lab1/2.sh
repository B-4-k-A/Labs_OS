#!/bin/bash
res=""
str=""
while [[ "$str" != "q" ]]
do
read str
if [[ "$str" == "q" ]]
then
break
fi
res+=" "$str
done
echo $res

