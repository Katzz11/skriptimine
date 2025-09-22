#!/bin/bash
# Skript arvutab kasutaja sisestatud täisarvu numbrite summa
# Negatiivse arvu puhul väljastatakse ka summa negatiivse märgiga

# Küsi sisendit
echo -n "Sisesta suvaline täisarv: "
read arv

# Leiame absoluutväärtuse, et saaks numbreid töödelda
abs=${arv#-}

summa=0

# While tsükkel numbrite kaupa läbimiseks
while [ $abs -gt 0 ]; do
    digit=$((abs % 10))       # Viimane number
    summa=$((summa + digit))  # Liidame summa juurde
    abs=$((abs / 10))         # Järgmine number
done

# Kui arv oli negatiivne, teeme summast negatiivse
if [[ $arv == -* ]]; then
    summa=$((-1 * summa))
fi

# Tulemuse väljastamine
echo "Arvu $arv numbrite summa on $summa"
