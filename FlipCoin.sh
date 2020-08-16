#!/bin/bash -x  

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

echo $head
echo $tail

if [ $head -gt $tail ]
then
		win=$(( $head - $tail ))
		echo "head win by $win"

elif [ $tail -gt $head ]
then
		win=$(( $tail - $head ))
		echo "tail win by $win"
else
		echo "match Tie"
fi


