#!/bin/bash

echo "Please enter your number"
read num

if [[ "$num" -le 9 && "$num" -ge 1 ]];
then
	echo "Your number is  one-digit"
	exit 1
elif [[ "$num" -ge -9 && "$num" -le -1 ]];
	then
	echo "Your number is negative one-digit"
	exit 1
fi


declare -i result=0
declare -i count=0

while [[ "$num" -ge 1 || "$num" -le -1 ]]
do
result=$((( num % 10 ) + result))
num=$((num / 10))
a=$((a + 1))
done

declare -i mid=$((result / a))

echo -e "Result = $result\nMid = $mid"
