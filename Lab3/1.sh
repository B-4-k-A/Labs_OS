#!/bin/bash

mkdir ~/test &&  {
echo "catalog wac created successfully" >> ~/report
touch ~/test/$(date +'%d-%m-%y_%H:%M:%S')
}
ping -c 1 www.net_nikogo.ru || echo "$(date +'%d-%m-%y_%H:%M:%S') (WW) Host is not available!" >> ~/report
