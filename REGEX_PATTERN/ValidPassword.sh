#!/bin/bash -x
echo "Enter Password"
read pass

pat="^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$"

if [[ $pass =~ $pat ]]
then
	echo valid;
else
	echo Invalid;
fi
