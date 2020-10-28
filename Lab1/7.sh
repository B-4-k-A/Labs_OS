#!/bin/bash
mail_reg="[a-z0-9_.-]+@[a-z_.-]+\.[a-z]+"
grep -i -o  --no-messages --no-filename --binary-files=without-match -E $mail_reg  -r /etc/ | uniq | awk ' { printf("%s, ", $1 ) } ' | sed 's/..$//' > emails.lst
