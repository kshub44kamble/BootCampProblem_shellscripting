#!/bin/bash 
echo "Enter mob num: "
read mobile

patt="^[789][ ]d{9}$"

if [[ $mobile =~ $patt ]];
then
	echo "valid mobile num"
else
	echo "Invalid mobile num"
fi
