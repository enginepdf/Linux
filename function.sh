#!/bin/bash

check() {  # function check {}
    if [[ -f "${1}" ]]
    then      
        echo the "${1}" exists
    else
        return 1  
    fi
}

check './function.sh'
check '/etc/passwd'

if [[ "${?}" -eq '0' ]]
then
  echo "check done"
else
  echo "check didn't work"
  exit 1
fi

# the ./function.sh exists
# the /etc/passwd exists
# check done