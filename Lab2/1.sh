#!/bin/bash
ps -u user -o pid,comm | tail -n +2 | wc -l > userProcess.lst
ps -u user -o pid,comm | tail -n +2 | awk '{printf("%s:\t%s\n", $1, $2)}' >> userProcess.lst
