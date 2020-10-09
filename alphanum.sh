#!/bin/bash

read -p "text: " str

if grep -q '^[0-9a-ZA-Z]*$' <<<$str;
then
	if [[ "$str" = '' ]];
	then
		echo "It's empty."
	elif grep -q '^[a-zA-Z]*$' <<<$str;
	then
		echo "It's a word."
	elif grep -q '^[0-9]*$' <<<$str;
	then
		echo "It's a number."
	elif grep -q '^[0-9a-zA-Z]*$' <<<$str;
	then
		echo "It's a mix."
	fi
else
	echo "Wait... What?"
fi
