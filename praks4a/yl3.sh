#!/bin/bash
# See skript teeb kataloogist ./test varukoopia,
# pakib selle kokku ja salvestab faili ./backup/test.backup.tar.gz

backup_dir="./backup"
source_dir="./test"
backup_file="test.backup.tar.gz"

echo "Kataloogi $source_dir backup_i nimi on $backup_file ja asub $backup_dir kataloogis."

# Tee varukoopia (paki kokku ja suru)
tar -czf "$backup_dir/$backup_file" -C . "$(basename "$source_dir")"

echo "Varukoopia edukalt loodud."
