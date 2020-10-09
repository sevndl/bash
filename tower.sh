#!/bin/bash


roof() {
	echo " ----------------- "
}


triangle() {
	echo "|                 |"
	echo "|  /\        /\   |"
	echo "| /__\      /__\  |"
	echo "|                 |"
}

square() {
	echo "|  _ _       _ _  |"
	echo "| |_|_|     |_|_| |"
	echo "| |_|_|     |_|_| |"
	echo "|                 |"
}

bottom() {
	echo "|        _        |"
	echo "|       | |       |"
	echo "|_______| |_______|"
}

size=$1
windows=$2
if (( $#==2 ));
then
	if ! grep -q '^[0-9]*$' <<<$size;
	then
		exit 1
	fi
	if [[ "$windows" == "triangle" || "$windows" == "square" ]];
	then
		roof
		for (( i=1; i<=$size; i++ ));
		do
			$windows
		done
		bottom
		exit 0
	else
		exit 1
	fi
else
	exit 1
fi
