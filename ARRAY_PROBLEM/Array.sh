#!/bin/bash -x

num=( 1 2 3 4 5 6 )
echo ${num[@]}
for i in ${num[@]}
do
	echo $i
done
