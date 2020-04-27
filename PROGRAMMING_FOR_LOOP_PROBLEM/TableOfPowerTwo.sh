
read -p "Enter the value" number
for (( count=1; count<=number; count++ ))
do
  echo $(( 2*$count ))
  result=$(( 2*$count ))
  echo $result
done
