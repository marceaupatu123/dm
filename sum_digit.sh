#!/bin/bash
args=$@
for i in $args; do
    number=$i;
    sum=0;
    while [ $number -ge 10 ]; do
        sum=$((sum + $((number % 10))))
        number=$((number / 10))
    done
    echo $((sum + number))
done

chmod u+x sum_digit.sh