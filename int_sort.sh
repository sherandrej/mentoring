#!/bin/bash
echo -n
re='^[0-9]+$'
read input
int_list=($input)
length=${#int_list[*]}
echo "Original list: ${int_list[*]}"

# checking input list for numbers
for elem in ${int_list[*]}
do
	if ! [[ $elem =~ $re ]] 
	then
		echo "$elem Not number" >&2
		exit 1
	fi
done

# ECHO elements greater 7 t
counter=0
while [ $counter -le $length ]
do
    if  [[ ${int_list[$counter]} -gt 7 ]] 
    then
        echo "${int_list[$counter]} greater 7 , $counter "
    fi
    counter=$(( $counter + 1 ))
done

# Performing Bubble sort  
flag=1
for (( iter1=0; iter1<$length-1; iter1++ ))
do
    flag=0;
    for ((jter1=0; jter1<$length-1-$iter1; jter1++))
    do
        if [[ ${int_list[$jter1]} -gt ${int_list[$jter1+1]} ]]
        then
            temp=${int_list[$jter1]};
            int_list[$jter1]=${int_list[$jter1+1]};
            int_list[$jter1+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done

echo "Sorted list:   ${int_list[*]}"

