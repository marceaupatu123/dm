#!/bin/bash

for binaire in "$@"; do
    decimal=0
    while [ $binaire -ne 0 ]; do
        bit=$(expr $binaire % 2)
        decimal=$(expr $(expr $decimal + $bit) \* 2)
        binaire=$(expr $binaire / 10)
    done
    echo "$decimal"
done