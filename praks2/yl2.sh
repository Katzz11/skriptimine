#!/bin/bash
# Skript väljastab tänase kuupäeva, kellaaja ja jooksva kuu kalendri.

echo "Today is $(date '+%A, %B %d, %Y')"
echo "Time is $(date '+%H:%M')"
echo
cal
