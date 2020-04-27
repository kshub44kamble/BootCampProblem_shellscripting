echo "Enter number to check prime or not"
read num

for(( i=2; i<=num/2; i++ ))
do
	if [ $(( num%i )) -eq 0 ]
	then
	  echo "$num is NOT a prime number"
	  exit
	fi
done
echo "$num is a prime number"

