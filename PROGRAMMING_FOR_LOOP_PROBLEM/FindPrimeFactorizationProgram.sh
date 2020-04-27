#!/bin/bash

echo "enter an interger : "
read input

if [ $input -lt 1 ]
then
	echo "not allowed"
	exit 1
fi

i=2
count=0
flag=0

for(( i; i<$input; i++ ))
do
	if [ `expr $input % $i` -eq 0 ];
	then
		factor=$i

	for (( j=2;j<=`expr $factor / 2`; j++ ))
	do
		flag=0
		if [ `expr $factor % $j` -eq 0 ];
		then
			flag=1
		break
		fi

	done

	if [ $flag -eq 0 ];
	then
		echo "[ $factor ]"
		count=1
	fi
	fi


done

if [ $count -eq 0 ];
then
	echo "No prime factor found except 1 and $input"
fi
