#!/bin/bash  

echo "Welcome to Flip Coin Simulation"

#variable
Head=0
Tail=0
count=0

read -p "enter number of time coin flip:" flipCoin

while [[ $count -lt $flipCoin ]] 
do 
	coinToss=$((RANDOM%2))
	if [ $coinToss -eq 0 ]
	then
		(( Head++ ))
	else
		(( Tail++ ))
	fi
	(( count++ ))
done

if [ $Head -gt $Tail ]
then
	echo "head win $Head"
else
	echo "tail win $Tail"
fi


