#!/bin/bash

x=mississipi

echo "number of time: " 
grep -o "s" <<< "$x" | wc -l


