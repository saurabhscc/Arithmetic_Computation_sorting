#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computaions"
echo "Taking 3 inputs"
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
sol1=$(($num1+$num2*$num3));
sol2=$(($num1*$num2+$num3));
sol3=$(($num3+$num1/$num2));
sol4=$(($num1%$num2+$num3));

declare -A computation
computation[0]=$sol1;
computation[1]=$sol2;
computation[2]=$sol3;
computation[3]=$sol4;

result=();
for (( i=0 ; i<${#computation[@]} ; i++ ))
do
	result[$i]=${computation[$i]};
done

for (( i=0 ; i<${#result[@]} ; i++ ))
do
	for (( j=$(($i+1)) ; j<${#result[@]} ; j++ ))
	do
		if [ ${result[i]} -lt ${result[j]} ]
		then
			temp=${result[j]};
			result[j]=${result[i]};
			result[i]=$temp;
		fi
	done
done

echo "Result in Descending Order: " ${result[@]};
