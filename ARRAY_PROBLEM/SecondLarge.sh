#!/bin/bash 

range=10
i=0
while [ $i -lt $range ]
do
	num=$RANDOM
	arrName[$i]=$(($num%1000))
	sort -n <(printf "%s\n" "${arrName[@]}")
	i=`expr $i + 1`
done
for number in ${arrName[@]}
do
	echo $number
done
