#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOG_FILE="/tmp/package_install.log"
timestmp="date +%Y-%m-%d_%H-%M-%S"

if [ $id -ne 0 ]
then
    echo "this is not a root user kindly cehck the root aeccess"
    exit 1
else
    echo "wellcome to the root aeccess"

touch "$LOG_FILE"

if [ $? -eq 0 ]
then
    echo " === Installation started at $(timestmp) ===" >> "$LOG_FILE"
else
    echo "=== Installation failed $(timestmp) ===" >> "$LOG_FILE"

yum install mysql -y