#!/bin/bash
#CONTROL D'ERROR
if [ $# -eq 0 ]; then
    echo "has de posar al manco un paràmetre"
    exit 1
fi

PARELLS=0
IMPARELLS=0

while [ ${#} -gt 0 ]; do
    if [ $((${1} % 2 )) -eq 0 ]; then
        PARELLS=$((PARELLS+1))
    else
        IMPARELLS=$((IMPARELLS+1))
    fi
    shift
done

echo "Hi ha  ${PARELLS} números parells"
echo "Hi ha  ${IMPARELLS} números imparells"