#!/bin/bash

<<help
Creating User using shell script
help

echo "======= User Creation Started ======="

read -p "Enter the Username :" $1
read -p "Enter the password :" $2

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"
echo "======= User creation Ended ========"
