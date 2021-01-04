#!/bin/bash

items=('aa' 1) # array

items+=(2)
# item=(1)
# items=("${items[@]/$item}")    # remove the item
# unset item[1] # remove

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

if []; then
elif []; then
else
fi

while (); do
done