#!/bin/bash
solvequad(){
a=$1
b=$2
c=$3
if [ $a -eq 0 ]
then
echo "x= "$((-c/b))
else
delta=$((b*b-(4*a*c)))
if [ $delta -eq 0 ]
then
echo "x1=x2=  " $((-b/2*a))
elif [ $delta -gt 0 ]
then 
echo "x1" $((b*b+(($delta)^1/2)/2*a)) "and" "x2" $((b*b-(($delta)^1/2)/2*a))
else 
echo "no solution"
fi
fi
}
solvequad 1 2 3 

