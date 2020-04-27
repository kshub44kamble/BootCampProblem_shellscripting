#!/bin/bash -x

echo "1 - Feet to Inch"
echo "2 - Inch to Feet"
echo "3 - Feet to Meter"
echo "4 - Meter to Feet"

echo "Select from 1 - 4 :"

read unit
case $unit in
	1)read -p "enter feet :" feet
	  feet2inch=12.00
	  result=$(echo $feet*$feet2inch | bc)
	  echo "$unit feet = $result inche"
	;;

	2)read -p "enter inches :" inches
	  inch2feet=0.083333
	  result=$(echo $inches*$inch2feet | bc)
	  echo "$inches inches = $result feet"
	;;

	3)read -p "enter feet : " feet
	  feet2meter=0.3048
	  result=$(echo $feet*$feet2meter | bc)
	  echo "$feet feet = $result meter"
	;;

	4)read -p "enter meter : " meter
	  meter2feet=3.28084
	  result=$(echo $meter*$meter2feet | bc)
	  echo "$meter meter = $result feet"
	;;

	*)echo "Invalid choice"
	;;

esac
