#!/bin/bash


#variable input and out
	read a
	echo answer is $a

#arithmetic operation
read a
read b
echo answer is $((a+b))
echo answer is $(expr $a + $b)

echo "$a+$b"|bc	#floating

#array input and output
	read -a a
	for i in ${!a[@]}; do
		echo ${a[$i]}
	done
	

	echo all the values are "${a[@]}"
	echo all the indices are "${!a[@]}"
	echo total values is "${#a[@]}"

#case
read count
case $count in
	1 )
		echo this is one
		;;
	2)
		echo this is two
		;;
	*)
		echo this is default
		;;
esac

#if .. else
if [[ $a -eq $b ]]; then
	echo they are equal
elif [[ $a > $b ]]; then
	echo $a is greater than $b
else
	echo nai
fi


#pattern print
*
**
***
****
read n

for (( i = 1; i <= n; i++ )); do
	for (( j = 1; j <= i; j++ )); do
		echo -n "*"
	done
		echo 
done


1
12
123

read n

for ((i=1;i<=n;i++));do
	for((j=1;j<=i;j++));do
		echo -n $j
	done
	echo
done

