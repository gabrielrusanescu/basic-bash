#!/bin/bash

numere=(1 2 3 4 5)
echo "Elementele sunt: "
for numar in "${numere[@]}"; do
	echo "$numar"
done
echo

declare -A matrice
matrice[0,0]=1
matrice[0,1]=2
matrice[1,0]=3
matrice[1,1]=4

echo "Elementele matricei: "
for ((i=0; i<2; i++)); do
	for((j=0; j<2; j++)); do
		echo "${matrice[$i,$j]}"
	done
done
