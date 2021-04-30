a='100'
b='100'

if [[ "${a}" -ne "${b}" ]]
then
    echo "a is not the same as b"
    exit 1
else 
    echo "a is the same as b"
    exit 0
fi

echo "a is the same as b"

echo $?  # 0, latest exit status     
echo "${?}"