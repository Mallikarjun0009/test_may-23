#!/bin/bash


# Script to find the greatest of two numbers
read -p "Enter first number: " num1
read -p "Enter second number: " num2

if [ "$num1" -gt "$num2" ]; then
    echo "The greater number is: $num1"
else
    echo "The greater number is: $num2"
fi
