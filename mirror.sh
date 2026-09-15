#!/bin/bash
args=$@
for i in $args; do
    number=$i;
    reverse="";
    while [ $number -ge 1 ]; do
        reste=$(expr $number % 10)
        reverse=$reverse$reste
        number=$(expr $number / 10)
    done
    echo $reverse
done
chmod u+x mirror.sh