#!/bin/bash
# See skript küsib kasutajalt kuu numbri ja väljastab kuu nimetuse või veateate

# Kuu nimed massiivis
kuud=("jaanuar" "veebruar" "märts" "aprill" "mai" "juuni" "juuli" "august" "september" "oktoober" "november" "detsember")

# Küsi kuu number
read -p "Sisesta kuu number (1-12): " kuu_nr

# Kontrolli, kas sisestatud väärtus on 1–12
if [[ $kuu_nr -ge 1 && $kuu_nr -le 12 ]]; then
    # Käi tsükliga üle massiivi ja otsi õige kuu
    for i in "${!kuud[@]}"; do
        if [[ $((i+1)) -eq $kuu_nr ]]; then
            echo "See on ${kuud[$i]}"
        fi
    done
else
    echo "Viga: Palun sisesta number vahemikus 1 kuni 12."
fi
