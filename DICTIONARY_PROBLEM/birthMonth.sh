#!/bin/bash -x 

# fucntion to generate birth month
function generateBirthMonth() {
	echo $((RANDOM%12+1))
}

# function to distribute people according to their birth month
function distributeByMonth() {
	if [ -v monthList[$1] ]
	then
		monthList[$1]=$((${monthList[$1]}+1))
	else
		monthList[$1]=1
	fi
}

# function to print the month list
function printList() {
	for var in  ${!monthList[@]}
	do
		echo "$var : ${monthList[$var]}"
	done
}

# creating the list
declare -A monthList

person=1

# generating 50 person's birth month
while [ $person -le 50 ]
do
	month=$( generateBirthMonth )
	case $month in
		1)
			distributeByMonth "January"
			;;
		2)
			distributeByMonth "February"
			;;
		3)
			distributeByMonth "March"
			;;
		4)
			distributeByMonth "April"
			;;
		5)
			distributeByMonth "May"
			;;
		6)
			distributeByMonth "June"
			;;
		7)
			distributeByMonth "July"
			;;
		8)
			distributeByMonth "August"
			;;
		9)
			distributeByMonth "September"
			;;
		10)
			distributeByMonth "October"
			;;
		11)
			distributeByMonth "Novermber"
			;;
		*)
			distributeByMonth "Decemeber"
			;;
	esac
	(( person++ ))
done

# displayin the month and people according to their birth month
printList ${monthList[@]}
