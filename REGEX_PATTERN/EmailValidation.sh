#!/bin/bash -x
email=$1

patt="^([a-zA-Z0-9_\-\.\+]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"

if [[ $email =~ $patt ]];
then
    echo "Email valid."
else
    echo "Email Invalid."
fi
