#!/bin/bash

i=1
while [ $i -le $1 ]
do
#	sum=$[$sum+$i]
#	i=$[$i+1]
	let sum+=i
	let i++
done
echo $sum
