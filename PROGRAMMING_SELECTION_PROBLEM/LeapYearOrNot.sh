#!/bin/bash -x

echo "Enter the year (YYYY)"
read year
if [ $(( year % 4 )) -eq 0 ]
  then
	if [ $(( year % 100 )) -eq 0 ]
	  then
		if [ $(( year % 400 )) -eq 0 ]
		  then
			echo "Leap year"
		  else
			echo "not Leap year"
		fi
	else
	  echo "Leap year"
	fi
else
  echo "not Leap year"
fi
