#!/bin/bash 
max=0
min=1000
for (( i=1 ; $i<=5 ; i++ ))
do
	n=$(( $RANDOM%1000))
	echo $n
	if [[ $max -lt $n ]]
	then
		max=$(($n))
	fi
	if [[ $min -gt $n ]]
        then
                min=$(($n))
        fi

done
echo "Maximum :" $max
echo "Minimum :" $min
