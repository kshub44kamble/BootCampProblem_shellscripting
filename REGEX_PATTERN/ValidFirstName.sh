#!/bin/bash -x

echo "Enter Your Name:"
read name
pat="([A-Z][a-z]*)([\\s\\\'-][A-Z][a-z]*)*"
if [[ $name =~ $pat ]]
then
	echo valid Name;
else
	echo Invalid Name;
fi
