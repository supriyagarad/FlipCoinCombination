#!/bin/bash 

echo "Welcome to Flip Coin Simulation"

coinToss=$((RANDOM%2))

if [ $coinToss -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi
