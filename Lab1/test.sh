ps -aux | awk ' { if(length($2) < 5) { print $0} else {print Error! } }'
