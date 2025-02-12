#!/bin/bash

read -p "Enter the dir path: " dir

largest_file=$(ls -S $dir | head -1)

echo "Largest file : $largest_file"
