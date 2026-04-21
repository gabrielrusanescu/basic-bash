#!/bin/bash

function este_prim {
	numar=$1
	for  (( i=2; i<=numar/2; i++ )); do
		if [ $((numar%i)) -eq 0 ]; then
			echo "$numar nu este prim"
			return 0
		fi
	done
	echo  "$numar este prim"
}
este_prim $1
