#! /bin/bash

ONE=0
UUID=$(uuidgen)
while true; do
	((ONE+=1))
	printf "$UUID $ONE\n"
done
