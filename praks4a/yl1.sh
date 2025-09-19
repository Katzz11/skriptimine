#!/bin/bash
# See skript küsib kasutaja nime ja sünniaasta, siis arvutab ja kuvab tema vanuse.

# Küsime nime
read -p "Sisesta oma nimi: " nimi

# Tervitame kasutajat
echo "Tere tulemast, $nimi!"

# Küsime sünniaasta
read -p "Sisesta oma sünniaasta: " synniaasta

# Leiame käesoleva aasta
praegune_aasta=$(date +%Y)

# Arvutame vanuse
vanus=$((praegune_aasta - synniaasta))

# Kuvame tulemuse
echo "$nimi, sina oled $vanus aasta vana."
