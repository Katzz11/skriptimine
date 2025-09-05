#!/bin/bash

# tervitab kasutajat

echo -n "Tere,"

#Tekitab kasutajanimi ja muuda esimene täht suureks

username=$(whoami)

capitalized=${username^}

echo -n "$capitalized"

# väljastab !

echo "!"
