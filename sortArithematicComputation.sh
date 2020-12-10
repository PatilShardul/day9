#!/usr/bin/bash -x
echo " welcome to compute and sort arithematic numbers "

declare -A computeVals

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter a Third Number : " c

computeVals[1]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a+b*c} END {print compute}'`
computeVals[2]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a*b+c} END {print compute}'`
computeVals[3]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=c+a/b} END {print compute}'`
computeVals[4]=`echo | awk -v a=$a -v b=$b -v c=$c '{compute=a%b+c} END {print compute}'`

