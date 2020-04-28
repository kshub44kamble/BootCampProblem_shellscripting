#!/bin/bash 
Palindrome() {
    number=$1
    revNumber=0
    while [ $number -gt 0 ]
    do
        value=$(($number % 10))
        revNumber=$((($revNumber * 10) + $value))
        number=$(($number / 10))
    done
    isPrime $revNumber
}

isPrime(){
    flag=0
    number=$1
    for ((counter=2; counter <= $number; counter++))
    do
        if [ $(($number % $counter)) == 0 ]
        then
            flag=$(($flag + 1))
        fi
    done
 
    if [ $number == 1 ]
    then
        echo "1 is not prime"
    elif [ $flag -lt 2 ]
    then
        echo "$number is prime"
    else
        echo "$number is not prime"
    fi
}
read -p "Enter a number: " num
isPrime $num
Palindrome $num
