#1/bin/bash -x

echo "Enter the number for wee day : "
read day

case $day in
	1)echo "mon" ;;
	2)echo "tue" ;;
	3)echo "wed" ;;
	4)echo "thu" ;;
	5)echo "fri" ;;
	6)echo "sat" ;;
	7)echo "Sunday" ;;
	*)echo "Its something else";;
esac
