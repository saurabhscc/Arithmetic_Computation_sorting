#!/bin/bash -x
echo "Welcome to Sorting Arithmetic Computaions"
echo "Taking 3 inputs"
read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3
sol1=$(($num1+$num2*$num3));
sol2=$(($num1*$num2+$num3));
sol3=$(($num3+$num1/$num2));
