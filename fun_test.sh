#!/bin/bash

function add()
{
	s=$[$1+$2]
	echo $s
}

read -p "input first num: " a
read -p "input second num: " b

sum=$(add $a $b)
echo $sum
