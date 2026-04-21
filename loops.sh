#!/bin/bash

# Bucla for
echo "Bucla for"
for i in {1..5}; do
	echo "Numarul, $i"
done
echo

# Bucla while
echo "Bucla while"
n=1
while [ $n -le 5 ]; do
	echo "Numarul, $n"
	((n++))
done
echo

# Bucla until care este do while
echo "Bucla until"
g=1
until [ $g -gt 5 ]; do
	echo "Numarul, $g"
	((g++))
done
echo
