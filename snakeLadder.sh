#!/bin/bash -x
position=0;
startPosition=0;
endPosition=100;
diceRole=0;
while [ $position -ge $startPosition ] && [ $position -le $endPosition ]
do
	diceNo=$(($RANDOM%6+1))
	moveCheck=$(($RANDOM%3))
	if [ $moveCheck -eq 0 ]
	then
		#snake
		if [ $position -gt $diceno ]
		then
      position=$(($position - $diceNo))
		fi
	elif [ $moveCheck -eq 1 ]
	then
		#not move
	  positon=$position
	else
		#ladder
   	position=$(($position + $diceNo))
	fi
   diceRole=$(($diceRole+1))
done
#use case 6 === no of time dice role to win the game
if [ $position -eq $endPosition ]
then
	echo "winner winner "
	echo "no of time dice role to win the game $diceRole"
fi

