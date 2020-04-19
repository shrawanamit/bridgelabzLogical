#!/bin/bash -x
#use case 1 read input

echo "enter three integer values"
read a
read b
read c
#use case 2,3,4,5 Computation

compute=$(($a + $b * $c))
compute1=$(($a * $b + $c))
compute2=$(($c + $a / $b))
compute3=$(($a % $b + $c))

#use case 6 add compute value in dictionary

declare -A  dictionary
dictionary[key]=$compute
dictionary[key1]=$compute1
dictionary[key2]=$compute2
dictionary[key3]=$compute3

#use case 7 store all value of use case 6 into dictionary

count=0;
for i in ${dictionary[@]}
do
	resultArray[((count++))]=$i;
done

#use case 8  sort computation result in decending order

for ((i=0;i<3;i++))
do
	for ((j=i+1;j<4;j++))
	do
		if ((${resultArray[i]} < ${resultArray[j]}))
		then
			temp=${resultArray[$j]};
			resultArray[$j]=${resultArray[$i]};
			resultArray[$i]=$temp;
		fi
	done
done
echo "Array in Decending order:";
echo ${resultArray[@]};

# use case 9 sort array in ascending
for ((i=0;i<3;i++))
do
	for ((j=i+1;j<4;j++))
	do
		if ((${resultArray[i]} > ${resultArray[j]}))
		then
			temp=${resultArray[$j]};
			resultArray[$j]=${resultArray[$i]};
			resultArray[$i]=$temp;
		fi
	done
done
echo "Array in Ascending Order:";
echo ${resultArray[@]};
