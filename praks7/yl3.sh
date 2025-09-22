#!/bin/bash
# See skript küsib kasutajalt ridade arvu ja iga rea sümbolite arvu ning väljastab tärnidest raamiga kujundi

# Küsi kasutajalt ridade arvu
read -p "Sisesta ridade arv: " read_arv

# Küsi kasutajalt tärnide arvu reas
read -p "Sisesta tarnide arv reas: " tarnide_arv

# Kontrolli, et sisestatud arvud on vähemalt 1
if [[ $read_arv -le 0 || $tarnide_arv -le 0 ]]; then
    echo "Viga: mõlemad arvud peavad olema positiivsed."
    exit 1
fi

# Loo raamiga kujund
for ((i=1; i<=read_arv; i++))
do
    echo -n "$i. "
    for ((j=1; j<=tarnide_arv; j++))
    do
        # Esimene ja viimane rida täis tärnid
        if [[ $i -eq 1 || $i -eq $read_arv ]]; then
            echo -n "* "
        else
            # Sisemised read: esimene ja viimane tärn, vahe tühikud
            if [[ $j -eq 1 || $j -eq $tarnide_arv ]]; then
                echo -n "* "
            else
                echo -n "  "
            fi
        fi
    done
    echo
done
