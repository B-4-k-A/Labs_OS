#!/bin/bash
man bash | grep -o -i "[a-z]\{4,\}" | sort | uniq -c | sort -nr | head -3 | awk ' { print($2) } '
