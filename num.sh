#!/bin/bash
chmod u+x num.sh
if [ "$#" -lt 2 ]; then
    echo "Erreur : Argument manquant"
    bash ./readme.sh
    exit 1
fi


case $1 in
    len|l) op="l" ;;
    mir|m) op="m" ;;
    sum|s) op="s" ;;
    bin|b) op="b" ;;
    dec|d) op="d" ;;
    int|i) op="i" ;;
    *)
        echo "Erreur : opération inconnue ($1)"
        exit 1
    esac

shift
args=$@

for i in $args; do
    isnum="$(expr 0 + "$i" 2>/dev/null)"
    echo $isnum
    if [ -z $isnum ]; then
        echo "$i n'est pas un nombre entier"
        bash ./readme.sh
        exit 1
    fi
    if [ $i -lt 0 ]; then
        echo "$i n'est pas un nombre entier positif"
        bash ./readme.sh
        exit 1
    fi
done

case $op in
    l) bash len.sh $args ;;
    m) bash mirror.sh $args ;;
    s) bash sum_digit.sh $args ;;
    b) bash binary_to_decimal.sh $args ;;
    d) bash decimal_to_binary.sh $args ;;
    i) echo "Erreur : En cours d'implémentation" ;;
    *)
        echo "Erreur : Imposible d'être arrivé jusqu'à cette ligne normalement... O-o"
        exit 1
    esac