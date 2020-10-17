#!/bin/bash
ps aux | sort -n -k4 -r | head -1 | awk '{print $2}'
