#!/bin/bash

read -p "Enter an array: " -a array
#-a enables to take input without taking newline

echo -n "Please choose your task: "
#-n means print without newline
read choice
len=${#array[@]}

case $choice in 
1)
	echo -n "Sorted Array: "
	array=( $( printf "%s\n" "${array[@]}" | sort -n ) )
	
	for i in "${!array[@]}";
	do 
  		printf "%s " "${array[$i]}"
	done
	echo "" ;;	
2)
	even=()
	odd=()
	eveni=0
	oddi=0
	for i in "${!array[@]}";
	do
		temp=${array[i]}
		
		if [ $(($temp%2)) -eq 0 ]
		then
			even[$eveni]=$temp
			eveni=$((eveni+1))
			
		else
			odd[$oddi]=$temp
			oddi=$((oddi+1))
			
		fi 
		
	done

	echo -n "Even Elements: "
	for i in "${!even[@]}";
	do 
  		echo -n "${even[$i]} " 
	done
	echo ""
	
	echo -n "Odd Elements: "
	for i in "${!odd[@]}";
	do 
  		echo -n "${odd[$i]} "
	done	
	echo ""	
	;;


3)
	sum=0
	
	for i in "${!array[@]}";
	do
		sum=$((sum+${array[i]}))
		
	done
	len=${#array[@]}
	avg=$(echo "scale=2; $sum / $len" | bc -l)
	avg=$((sum/len)) | bc
	echo "The Average value: $avg" 
	;;
	
 4)
	max=${array[0]}
	min=${array[0]}
	#echo $max
	for i in "${!array[@]}";
	do
		if [ $max -lt ${array[i]} ]
		then
			max=${array[i]}	
		fi	
		if [ $min -gt ${array[i]} ]
		then
			min=${array[i]}	
		fi	
	done
	echo Maximum Number: $max
	echo Minimum Number: $min
	;;

5)
	count=0
	temp=0
	count1=0
	for((count=0;count<4; ))
	do
		temp=${array[$count]}
		count1=$((count+1))
	 	array[$count]=${array[$count1]}
		array[$count1]=$temp
		count=$((count+2))
	done
		
	echo -n "After Swapping: "
	for i in "${!array[@]}";
	do
		echo -n "${array[i]} "
		
	done
	echo ""
	;;



6)
	echo Please choose valid task number ;;
*)
	echo Please choose valid task number ;;

esac
