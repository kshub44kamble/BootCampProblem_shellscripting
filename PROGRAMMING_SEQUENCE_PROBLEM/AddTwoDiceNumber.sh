#!/bin/bash -x

read -p " Start value " start
read -p " End value " end

diff=$(( end - start + 1 ))
echo $diff

ran=$(( $RANDOM ))
random=$(( $start + $(( $start + $ran % diff )) ))
result=$(( start + random % diff ))

