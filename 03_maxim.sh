#!/bin/bash
#CONTROL D'ERROR
if [ $# -eq 0 ]; then
    echo "has de posar al manco un paràmetre"
    exit 1
fi

MAXIM=${1}

while [ ${#} -gt 0 ]; do
    if [ $1 -gt $MAXIM ]; then
        #entram si el número següent es major que el maxim
        MAXIM=${1}
    fi
    shift
done

echo "el maxim ${MAXIM}"