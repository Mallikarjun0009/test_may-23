#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FILE="/tmp/package_install.log"
timestamp=$(date +%Y-%m-%d_%H-%M-%S)

if [ $ID -ne 0 ]
then
    echo -e "${R}This is not a root user. Kindly check root access.${N}"
    exit 1
else
    echo -e "${G}Welcome, root user.${N}"
fi

touch "$LOG_FILE"

if [ $? -ne 0 ]
then
    echo "=== Failed to create log file at $timestamp ==="
    exit 1
else
    echo "=== Installation started at $timestamp ===" >> "$LOG_FILE"
fi

# INSTALL_PACKAGE() {
#     yum install $1 -y >> $LOG_FILE 2>&1
#     VALIDATE $? "Installing $1"
# }

# PACKAGES=("mysql" "nginx" "git" "wget" "net-tools" "httpd" "tree")
# for PACKAGES in "${PACKAGES[@]}"
# do
    
yum install mysql -y >> $LOG_FILE

if [ $? -eq 0 ]
then
    echo -e "${G}MySQL installation successful.${N}"
else
    echo -e "${R}MySQL installation failed. Check $LOG_FILE.${N}"
fi