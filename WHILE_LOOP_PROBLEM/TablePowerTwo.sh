#!/bin/bash
echo "Enter The Number to Print Table:"
read n
i=1
while [ $i -le 8 ]; do
	i=$(expr $i + 1)
	table=$(expr $i \* $n)
	echo $table
done
