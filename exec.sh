#!/bin/bash

if [ $# -ne 2 ]
then
	echo "Uso: sh $0 <pasta-de-entrada> <pasta-de-gabarito>"

else
	for filename in ./"$1"/*.cm; do
		echo ---- "$filename" ----
		./trab1 <  "$filename" | diff "$2/$(basename "$filename" .cm).out" -
		echo ---- ---- ---- ----
	done
fi;

