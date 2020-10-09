#!/bin/bash


if (( $#==2 ));
then
	exec 8< $1
	exec 9< $2

	while :
	do
		read line1 <&8
		read line2 <&9
		[ -n "$line1" ] && echo "$line1"
		[ -n "$line2" ] && echo "$line2"
		[ -z "$line1" -a -z "$line2" ] && break
	done
else
	echo "Entrez deux noms de fichier"
fi
nbLines1=`wc -l $1`
nb1=${nbLines1% *}
nbLines2=`wc -l $2`
nb2=${nbLines2% *}

if (( $nb1 > $nb2 ));
then
	exit $nb2
elif (( $nb1 < $nb2 ));
then
	exit $nb1
elif (( $nb1 = $nb2 ));
then
	exit $nb1
fi
