#!/bin/bash

str=$1
nbRotations=$2
alphaMinus=abcdefghijklmnopqrstuvwxyz
alphaMajus=ABCDEFGHIJKLMNOPQRSTUVWXYZ

if (( $# == 2 ));
then
	if ! grep -q '^[0-9]*$' <<<$nbRotations
	then
		exit 1
	else
		sed "y/${alphaMinus}${alphaMajus}/${alphaMinus:$nbRotations}${alphaMinus::$nbRotations}${alphaMajus:$nbRotations}${alphaMajus::$nbRotations}/" <<< $str
		rotatedLetters="${str//[^abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]}"
		nbRotatedLetters="${#rotatedLetters}"
		exit $nbRotatedLetters
	fi
else
	exit 1
fi

