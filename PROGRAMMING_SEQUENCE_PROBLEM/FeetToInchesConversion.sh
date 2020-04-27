#!/bin/bash -x

read -p "Enter the feet:" feet

feetToinch=12.00
result=$( echo $feet*$feetToinch | bc )

echo "$feet feet = $result inches"

