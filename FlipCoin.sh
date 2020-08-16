#!/bin/bash  

echo "Welcome to Flip Coin Simulation"

#variable
head=0
tail=0

#constant
MAX_COUNT=21

while [ $head -lt $MAX_COUNT ] && [ $tail -lt $MAX_COUNT ]
do 
	coinToss=$((RANDOM%2))
	if [ $coinToss -eq 1 ]
	then
		(( head++ ))
	else
		(( tail++ ))
	fi
done

if [ $head -eq $tail ]
then
	while true
	do
		coin=$((RANDOM%2))
		if [ $coin -eq 1 ]
		then
			(( head++ ))
		else
			(( tail++ ))
		fi

		if [ $(($head - $tail )) -eq 2 ]
		then
			echo "head win by 2 and count is $head"

		else
				if [ $(($tail - $head )) -eq 2 ]
				then
					echo "Tail win by 2 and count is $tail"
				fi
		fi
	done

elif [ $head -gt $tail ]
then
		win=$(( $head - $tail ))
		echo "head win by $win"

else
		win=$(( $tail - $head ))
		echo "tail win by $win"
fi


