#!/bin/bash -x

random=$RANDOM
echo $random

echo $(( ( $random%10 ) ))
