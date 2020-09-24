#!/bin/bash
cmd=-1
echo -e "1. Nano\n2. Vi\n3. Links\n4. Exit"
read cmd
case $cmd in
1)
/usr/bin/nano
;;
2)
/usr/bin/vi
;;
3)
/usr/bin/links
;;
4)
exit 0
;;
esac
