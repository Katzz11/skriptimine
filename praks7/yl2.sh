#!/bin/bash
# See skript küsib kasutajalt ridade arvu ja iga rea sümbolite arvu ning väljastab vastava tärnidest kujundi

# Küsi kasutajalt ridade arvu
read -p "Sisesta ridade arv: " read_arv

# Küsi kasutajalt sümbolite arvu reas
read -p "Sisesta tärnide arv reas: " tarnide_arv

# Kontrolli, kas sisestatud väärtused on positiivsed arvud
if [[ $read_arv -le 0 || $tarnide_arv -le 0 ]]; then
    echo "Viga: mõlemad arvud peavad olema positiivsed."
    exit 1
fi

# Loo kujund
for ((i=1; i<=read_arv; i++))
do
    echo -n "$i.  "
    for ((j=1; j<=tarnide_arv; j++))
    do
        echo -n "* "
    done
    echo
done

