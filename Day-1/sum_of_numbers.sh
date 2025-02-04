#!/bin/bash

read -p "Enter the number: " num
sum=0
for ((i=1; i<=num; i++)); do
    sum=$((sum + i))
done

echo "Sum of all the numbers: $sum"




