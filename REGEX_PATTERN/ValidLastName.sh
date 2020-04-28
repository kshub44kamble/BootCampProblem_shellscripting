#!/bin/bash -x
echo "Enter the Name:"
read name

patt=^[A-Z][a-zA-Z]{3}

if [[ $name =~ $patt ]]
then
	echo valid;
else
	echo Invalid;
fi
