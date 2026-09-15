#!/bin/bash
#Fonction qui écrit en binaire le nombre décimal en argument par Maéva

for decimal in "$@"; do
    binaire=""
    if [ $decimal -eq 0 ]; then
        echo 0
        continue
    fi
    while [ $decimal -gt 0 ]; do
        binaire="$(expr $decimal % 2)$binaire"
        decimal=$(expr $decimal / 2)
    done
    echo "$binaire"
done
