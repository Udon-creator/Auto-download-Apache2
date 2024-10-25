user_name=$1
group_name=$2

if getent passwd $user_name > /dev/null 2>&1; then
	echo "have"
else
	echo "doesnt have"
fi

if getent group $group_name > /dev/null 2>&1; then
	echo "have" 
else 
	echo "doesnt have"
fi
