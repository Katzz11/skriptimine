#!/bin/bash
# yl4.sh - Skript, mis küsib kasutajalt kataloogi ja teeb sellest backupi ./backup kataloogi.

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

# Backup faili nimi
backupfail="$katalooginimi.backup.tar.gz"

# Pakime kataloogi kokku ja paneme backup kausta
tar -czf "$backupdir/$backupfail" -C "$(dirname "$kataloog")" "$katalooginimi"

# Väljund kasutajale
echo "Kataloog $kataloog backup_i nimi on $backupfail ja ta asub $backupdir kataloogis."
