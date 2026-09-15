#!/bin/bash
args=$@
for i in $args; do
    number=$i;
    sum=0;
    while [ $number -ge 10 ]; do
        sum=$(expr "$sum" + $(expr "$number" % 10))
        number=$(expr "$number" / 10)
    done
    echo $(expr "$sum" + "$number")
done

chmod u+x sum_digit.sh