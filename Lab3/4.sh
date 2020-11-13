#!/bin/bash

./4_1.sh &
./4_2.sh &
./4_3.sh &
renice +10 $(cat pid1) &
kill $(cat pid3)
