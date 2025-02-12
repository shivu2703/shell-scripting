#!/bin/bash

read -p "Enter the path of the directory: " dir
smallest_file=$(ls -S $dir | tail -1)
echo "Smallest file: $smallest_file"


