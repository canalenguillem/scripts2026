#!/bin/bash
#AL MANCO UN PARÀMETRE
if [ $# -eq 0 ]; then
    echo "has de posar al manco un paràmetre"
    exit 1
fi
#EL FACTORIAL DE 0 ES 1
#EL FACTORIAL DE 1 ES 1
#EL FACTORIAL ÉS PER EXEMPLE 3!=3X2X1=6
#EL FACTORIAL DE 10!=19X9X8X7X6X5X4X3X2X1
N=$1
if [ $N -gt 25 ]; then
    echo "NO PODEM CALCULAR FACTORIALS MAJORS QUE 25"
    exit 1
fi
if [ $N -lt 0 ]; then
    echo "NO PODEM CALCULAR FACTORIALS DE NÚMEROS NEGATIUS"
    exit 1
fi

FACTORIAL=1

while [ $N -gt 0 ]; do
    #abans de restar, multiplicar aquesta N al factorial
    FACTORIAL=$((FACTORIAL*N))
    N=$((N-1))

done
echo "EL FACTORIAL DE ${1} VAL ${FACTORIAL}"