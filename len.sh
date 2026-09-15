#!/bin/bash
# Implémentation de len.sh à faire par Maéva

for mot in "$@"; do
    len=0
    while [ $mot -gt 0 ]; do
        mot=$(expr $mot / 10)
        len=$(expr $len + 1)
    done
    if [ $mot -eq 0 ]; then
        echo "$len"
    fi
done
