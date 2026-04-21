#!/bin/bash

function salut {
	echo "Salut, $1"
}

salut "Test"

echo "Introduceti un text: "
read textIntrodus
echo "Textul introdus este: $textIntrodus"

salut $textIntrodus

echo "Argumentul 1 este: $1"
