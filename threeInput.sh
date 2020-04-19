#!/bin/bash -x
echo "enter three integer values"
read a
read b
read c
compute=$(($a + $b * $c))
compute1=$(($a * $b + $c))
compute2=$(($c + $a / $b))
compute3=$(($a % $b + $c))
echo $compute $compute1 $compute2 $compute3
