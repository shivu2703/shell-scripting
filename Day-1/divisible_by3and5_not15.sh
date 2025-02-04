#!/bin/bash

read -p "Enter the number which are divisible by 3 & 5 but not 15: " num

echo -n "Numbers are :"
for ((i=1; i<num ; i++)); do
    if ((($i % 3 == 0)) || (($i % 5 == 0)) && (($i % 15 != 0))); then
	echo -n "$i "
    fi
done



