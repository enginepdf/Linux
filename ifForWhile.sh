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

# ./ifForWhile.sh
# 1 detected
# aa 1 2
# aa
# 1
# 2

# if []; then
# elif []; then
# else
# fi

while [[ "${#}" -gt 0 ]]
do
  echo "the number of arguments: ${#}"
  echo "argument 1: $1"
  shift  # === shift 1
done

# ./ifForWhile.sh item1 item2
# the number of arguments: 2
# argument 1: item1
# the number of arguments: 1
# argument 1: item2