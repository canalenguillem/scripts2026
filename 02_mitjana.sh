#!/bin/bash
#CONTROL D'ERROR
if [ $# -eq 0 ]; then
    echo "has de posar al manco un paràmetre"
    exit 1
fi

#inicialitzam a zero
SUMA=0
#guardar la quantitat de números
QUANTS=${#}

while [ ${#} -gt 0 ]; do
    SUMA=$((SUMA+${1}))
    shift

done
#aquí SUMA conté la suma dels paràmetres
#la mitjana és dividir la suma entre el número de paràmetres
MITJANA=$((SUMA/QUANTS))
echo "la mitjana val ${MITJANA}"