#!/bin/bash
ps aux | tail -6 | head -1 | awk '{print $2}'
