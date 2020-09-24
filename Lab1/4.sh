#!/bin/bash
if [[ "$PWD" == $HOME ]]
then
echo $PWD
exit 0
else
echo "Warning! Script was not opened in home direction."
exit 1
fi
