#!/bin/bash -x

read -p "enter the inches:" inches

i2f=0.083333

result=$(echo $inches*$i2f | bc)
echo "$inches inches = $result feet"

