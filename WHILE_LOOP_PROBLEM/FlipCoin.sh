#!/bin/bash

time=11
head=0
tail=0

while [ $time -gt 0 ]
do
	coin=$(($RANDOM%2))
	if [ $coin == $head ]
	then
 
		 echo "head"
	else

		 echo "tail"
 	fi
	break
done
