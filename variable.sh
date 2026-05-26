#!/bin/bash

PERSON1=Kutty
PERSON2=Tinkku

echo "$PERSON1 : Hello $PERSON2, Good Morning"
echo "$PERSON2 : Hi $PERSON1, Very good morning"

date=$(date)
echo "starting the exatly: $(date)"

PERSON1=$1
PERSON2=$2

echo "$PERSON1 : Hello $PERSON2, Good Morning"
echo "$PERSON2 : Hi $PERSON1, Very good morning"


