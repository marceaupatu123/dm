#!/bin/bash
args=$@
for i in $args; do
    number=$i;
    reverse=0;
    while [ $number -ge 10 ]; do
        reverse=$((reverse*10 + $((number % 10))))
        number=$((number / 10))
    done
    echo $((reverse * 10 + number))
done