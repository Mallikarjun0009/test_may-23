#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error: Kndly run this script into a root user"
    exit 1
else
    echo "Yes..!! your in root user"
fi 

yum install mysql -y

if [ $? -ne 0]
then 
    echo "Error : installing mysql is faild"
    exit 1
else
    echo "instalation is ... success..!!"
fi
