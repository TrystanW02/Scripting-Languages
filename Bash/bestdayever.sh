#!/bin/bash

name=$1
compliment=$2

user=$(whoami)
whereami=$(pwd)
date=$(date)

echo "Good Morning $name!"
sleep 1
echo "You're looking good today $name!"
sleep 1
echo "You have the best $compliment I've seen $name!"
sleep 2

echo "You are currently logged in as $user and you are in the directory $whereami. Todays date is $date"
