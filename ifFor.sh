#!/bin/bash

items=('aa' 1)

items+=(2)
if [ ${items[1]} == 1 ]
then
    echo "1 detected"
    echo "${items[@]}"  # all elements
fi

for i in ${items[@]}; do
    echo ${items[i]}
done

# ./if.sh
# 1 detected
# aa 1 2
# aa
# 1
# 2