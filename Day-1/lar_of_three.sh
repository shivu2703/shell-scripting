#!/bin/bash
set -e

read -p "Enter three numbers" a b c

if ((a >= b && a >= c)); then
   echo "$a is the largest"
elif ((b >= a && b >= c)); then
   echo "$b is the largest"
else
   echo "$c is the largest"
fi






