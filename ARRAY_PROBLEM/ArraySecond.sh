#!/bin/bash 

range=10
i=0
while [ $i -lt $range ]
do
	num=$RANDOM
	arrName[$i]=$(($num%1000))
	i=`expr $i + 1`
done
for number in ${arrName[@]}
do
	echo $number
done
