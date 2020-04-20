#!/bin/bash -x
#use case 1,2,3,4
for (( day=1;day<=30;day++ ))
do
	stack=100;
	money=$stack;
	winGoal=150;
	lossGoal=50;
	totalWinPerDay=0;
	totalLossPerDay=0;
	while [ $money -gt $lossGoal ] && [ $money -lt $winGoal ]
	do
		checkWinLoss=$((RANDOM%2))
		if [ $checkWinLoss -eq 0 ]
		then
			totalWinPerDay=$(($totalWinPerDay+1))
			money=$(($money+1))
		else
			totalLossPerDay=$(($totalLossPerDay+1))
			money=$(($money-1))
		fi
	done
	winArray[$i]=$totalWinPerDay;
	lossArray[$i]=$totalLossPerDay;
done

#use case 5 know monthly win or loss by how much

totalWinByMonth=0;
totalLossByMonth=0;
for ((day=1;day<=30;day++))
do
	winByDay=0;
	lossByDay=0;
	totalWinLossDay=$(($winArray[$day] + $lossArray[$day]));
	if [$totalWinLossDay -gt 100]
	then
		winByDay=$(($totalWinLossDay - 100))
		totalWinByMonth=$((totalWinByMonth + 1));
	else
		lossByDay=$((100-$totalWinLossDay))
		totalLossByMonth=$((totalLossByMonth + 1));
	fi
	echo $winByDay;
	echo $lossByDay;
done

#usecase 7 gambler play next month or not

if [totalWinByMonth -gt totalLossByMonth]
then
	echo "play next month"
else
	echo "not play next month"


#use case 6 lucey and unlucey day

maxWinMoney=0;
maxLossMoney=0
for ((day=1;day<=30;day++))
do
	if [ $winArray[$day] -gt $luckeyDay ]
	then
		maxWinMoney=$winArray[$day];
   fi
   if [ $lossArray[$day] -gt $unLuckeyDay ]
	then
		maxLossMoney=$lossArray[$day];
	fi
done
for ((day=1;day<=30;day++))
do
	if [$maxWinMoney -eq $winArray[$day]]
   then
      echo $day
	fi
   if [$maxLossMoney -eq $lossArray[$day]]
   then
      echo $day
   fi
done
