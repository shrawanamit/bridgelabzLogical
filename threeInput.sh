#!/bin/bash -x
declare -A  dictionary
echo "enter three integer values"
read a
read b
read c
compute=$(($a + $b * $c))
compute1=$(($a * $b + $c))
compute2=$(($c + $a / $b))
compute3=$(($a % $b + $c))
dictionary[key]=$compute
dictionary[key1]=$compute1
dictionary[key2]=$compute2
dictionary[key3]=$compute3
echo ${dictionary[@]}
