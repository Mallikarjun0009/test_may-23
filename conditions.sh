#!/bin/bash

# Check if an argument was provided
if [ -z "$1" ]; then
   echo "Error: Please provide a number."
   echo "Usage: $0 <number>"
   exit 1
fi

NUMBER=$1

# Compare the number
if [ "$NUMBER" -gt 100 ]; then
   echo "Given number $NUMBER is greater than 100"
else
   echo "Given number $NUMBER is not greater than 100"
fi
