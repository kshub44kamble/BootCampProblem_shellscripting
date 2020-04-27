#!/bin/bash -x

read -p "Enter the feet:" feet

feet2meter=0.3048
result=$(echo $feet*$feet2meter | bc)
echo "$feet feet = $result meter"


