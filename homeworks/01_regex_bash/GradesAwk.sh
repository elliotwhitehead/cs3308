#! /bin/bash
# Author: Elliot Whitehead
if [[ $# -eq 0 ]] ; then
	echo 'Usage: GradesAwk.sh filename'
	exit 0
elif [[ $# -gt 1 ]]; then
	echo 'Usage: GradesAwk.sh filename'
	exit 0
fi

awk '{
	sum=0;
	for(col=4; col<=6; col++)
		sum+=$col;
		printf int(sum/3);
		printf " [";
		printf $1;
		printf "] ";
		printf $3;
		printf ", ";
		print $2;
}' $1 | sort -k 3 -k 2 -k 2