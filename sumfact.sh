#!/bin/bash

echo "Enter the range upto which the sum is calculated(range should be greater than 3)"
read e
a=0
c=1
a=$(expr $e + $c)
i=3
b=0
d=10
sum1=0
sum=0
while [ $i -ne $a ]
	do
		sub=$i
		while [ $sub -ne 0 ]
		do
			b=$(expr $sub % $d)
			sub=$(expr $sub / 10)
			if [ $b -eq 0 ];
			then
				sum1=$(expr $sum1 + 1)
			fi
                        if [ $b -eq 1 ];
                        then
                                sum1=$(expr $sum1 + 1)
                        fi
                        if [ $b -eq 2 ];
                        then
                                sum1=$(expr $sum1 + 2)
                        fi
                        if [ $b -eq 3 ];
                        then
                                sum1=$(expr $sum1 + 6)
                        fi
                        if [ $b -eq 4 ];
                        then
                                sum1=$(expr $sum1 + 24)
                        fi
                        if [ $b -eq 5 ];
                        then
                                sum1=$(expr $sum1 + 120)
                        fi
                        if [ $b -eq 6 ];
                        then
                                sum1=$(expr $sum1 + 720)
                        fi
                        if [ $b -eq 7 ];
                        then
                                sum1=$(expr $sum1 + 5040)
                        fi
                        if [ $b -eq 8 ];
                        then
                                sum1=$(expr $sum1 + 40320)
                        fi
                        if [ $b -eq 9 ];
                        then
                                sum1=$(expr $sum1 + 362880)
                        fi

		done
                if [ $sum1 -eq $i ];
                then
                	sum=$(expr $sum + $i)
                fi
		i=$(expr $i + $c)
		sum1=0
	done

echo "The sum is"
echo "$sum"
