#!/bin/bash -x

read -p "Enter the number for week day" day
if [[ $day == 0 ]]
then
	echo "sunday"
elif [[ $day == 1 ]]
then
	echo "monday"
 elif [[ $day == 2 ]]
then
	echo "Tuesday"
elif [[ $day == 3 ]]
then
	echo "wednesday"
elif [[ $day == 4 ]]
then
	echo "thursday"
elif [[ $day == 5 ]]
then
	echo "friday"
elif [[ $day == 6 ]]
then
	echo "satarday"
else
	echo "Invalid choice ! try again between 0 - 6 weekday"
fi
