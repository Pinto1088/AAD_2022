#!/bin/bash
# set counter 'c' to 1 and condition 
# c is less than or equal to 5
#make 
for (( f=0; f<=10; f++ ))
do
	for (( c=1; c<=5; c++ ))
	do 
		echo "Run num. $c"
		./incOrderRow$f >> ResultRow_x$f.txt
		wait
	done
done