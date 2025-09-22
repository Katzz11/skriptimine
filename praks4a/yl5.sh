#!/bin/bash
# yl5.sh - Skript, mis küsib kasutajalt kataloogi ja teeb sellest backupi ./backup kataloogi.
# Backup faili nimele lisatakse ka jooksev kuupäev (nt 18sept2025).

# Küsime kasutajalt kataloogi nime
read -p "Sisesta kataloogi nimi: " kataloog

# Kontrollime, kas kataloog eksisteerib
if [ ! -d "$kataloog" ]; then
  echo "Kataloogi $kataloog ei eksisteeri!"
  exit 1
fi

# Backup kataloog
backupdir="./backup"
mkdir -p "$backupdir"

# Võtame ainult kataloogi nime (ilma tee osata)
katalooginimi=$(basename "$kataloog")

# Loome kuupäeva formaadis nt: 18sept2025
kuupaev=$(date +"%d%b%Y" | tr '[:upper:]' '[:lower:]')

# Backup faili nimi
backupfail="$katalooginimi.backup.$kuupaev.tar.gz"

# Pakime kataloogi kokku ja paneme backup kausta
tar -czf "$backupdir/$backupfail" -C "$(dirname "$kataloog")" "$katalooginimi"

# Väljund kasutajale
echo "Kataloog $kataloog backup_i nimi on $backupfail ja ta asub $backupdir kataloogis."
