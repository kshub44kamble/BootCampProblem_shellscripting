read -p "Enter a number" a
read -p "Enter b number" b
read -p "Enter c number" c
d=$(( $a+$b*$c ))
e=$(( $a%$b+$c ))
f=$(( $a%$b*$c ))
g=$(( $a*$b+$c ))

if [ $d -gt $e ] && [ $d -gt $f ] && [ $d -gt $g ]
then
	echo "The maximum number is a+b*c" $d
elif [ $e -gt $f ] && [ $e -gt $g ]
then
	echo "The maximum number is a%b+c" $e
elif [ $f -gt $g ]
then
	echo "the maximum number is a%b*c" $f
else
	echo "the maximum number is a*b+c" $g
fi

if [ $d -lt $e ] && [ $d -lt $f ] && [ $d -lt $g ]
then
	echo "The minimum number is a+b*c" $d
elif [ $e -lt $f ] && [ $e -lt $g ]
then
	echo "the minimum number is a%b+c" $e
elif [ $f -lt $g ]
then
	echo "the minimum number is a%b*c" $f
else
	echo "the minimum number is a*b+c" $g
fi

