#!/bin/bash

echo "Write the number of the sequence of Fibonacci"
read sequen

a=0
b=1
c=0

echo -n "N=$sequen → "
sequen=$(( $sequen - 1 ))
for (( i=0; i<=$sequen; i++ ))
do
    echo -ne "$c, "
    c=$(( $a + $b ))
    a=$(($b))
    b=$(($c)) 
done
echo ""
