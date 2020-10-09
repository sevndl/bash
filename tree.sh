#!/bin/bash


if (( $#==0 || $#>1 ));
then
	exit
else
	if (( $1=='0' || $1=='1' ));
	then
		echo "Too tiny."
	else
		trunkSize=$1/2
		for (( i=0; i<$1; i++ ));
		do
			treeSpaces=$1-$i-1
			tree=1+2*$i
			for (( z=1; z<=$treeSpaces; z++ ));
			do
				echo -n " "
			done
			for (( x=1; x<=$tree; x++ ));
			do
				echo -n "*"
			done
			echo -e -n "\n"
		done
		for (( j=1; j<=$trunkSize; j++ ));
		do
			spacesTrunk=$1-1
			for (( y=1; y<=spacesTrunk; y++ ));
			do
				echo -n " "
			done
			echo -e -n "|\n"
		done
	fi
fi
