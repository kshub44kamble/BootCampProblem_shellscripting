#!/bin/bash 

read -p "enter the number" num

function isPrime(){
i=2
flag=0
while [ $i -le `expr $num / 2` ]
do
	if [ `expr $num % $i` -eq 0 ]
	then
		flag=1
	fi

	i=`expr $i + 1`
done

	if [ $flag -eq 1 ]
	then
		echo "number NOT prime"
	else
		echo "number IS prime" 
	fi
}

isPrime
