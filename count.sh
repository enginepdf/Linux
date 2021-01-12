#!/bin/bash

# reference : https://developer.ibm.com/technologies/linux/tutorials/l-lpic1-103-8/

x=$1
echo "$2" $(date)
while [ $x -gt 0 ]; do echo "${x}"; (( x=x-1 )); # (( x-- ))
done
echo "$2" $(date)


# chmod +x count.sh
# ./count.sh 5 test
# test Tue Jan 12 15:09:59 KST 2021
# 5
# 4
# 3
# 2
# 1
# test Tue Jan 12 15:09:59 KST 2021













