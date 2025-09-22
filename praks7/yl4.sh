#!/bin/bash
# See skript küsib kasutajalt ridade arvu ja väljastab tärnidest kasvava kaskaadi, kus iga rea tärnide arv võrdub rea numbriga

# Küsi kasutajalt ridade arvu
read -p "Sisesta ridade arv: " read_arv

# Kontrolli, et ridade arv on positiivne
if [[ $read_arv -le 0 ]]; then
    echo "Viga: ridade arv peab olema positiivne."
    exit 1
fi

# Väljastame kaskaadi
for ((i=1; i<=read_arv; i++))
do
    echo -n "$i. "
    for ((j=1; j<=i; j++))
    do
        echo -n "* "
    done
    echo
done
