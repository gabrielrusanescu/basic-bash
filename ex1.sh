#!/bin/bash

function prim {
	local num=$1
	if((num < 2)); then
		return 1;
	fi
	if((num == 2)); then
		return 0;
	fi
	if((num % 2 == 0)); then
		return 1;
	fi
	for((i=3; i*i<=num; i+=2)); do
		if((num % i == 0)); then
			return 1;
		fi
	done
	return 0;
}

echo "Introduceti numerele separate prin spatiu: "
read -a array

length=${#array[@]}

echo "Elementele in ordine inversa sunt: "
for(( i=$length-1; i>=0; i--)); do
	echo -n "${array[i]} "
done
echo

sum=0

for num in "${array[@]}"; do
	if (( num % 2 == 0 )); then
		(( sum+=num ))
	fi
done

echo "Suma numerelor pare este: $sum"

prod=1
for num in "${array[@]}"; do
	d=0
	for(( i=1; i<=num; i++ )); do 
		if(( num % i == 0 )); then
			(( d+=1 ))
		fi
	done
	if(( d == 2 )); then
		(( prod*=num ))
	fi
done
echo "Produsul este $prod"

p=1
for num in "${array[@]}"; do
	for(( i=1; i<=num; i++ )); do
		if prim "$i"; then
			((p *= i))
		fi
	done
done
echo "Produsul este $p"
