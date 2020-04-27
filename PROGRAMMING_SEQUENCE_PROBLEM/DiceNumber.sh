#!/bin/bash -x

random=$(( ( $RANDOM % 6 ) + 1 ))
echo $random
