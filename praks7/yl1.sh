#!/bin/bash
# See skript väljastab 5x5 tärnid koos ridade numbritega

for ((i=1; i<=5; i++))
do
    echo -n "$i.  "
    for ((j=1; j<=5; j++))
    do
        echo -n "* "
    done
    echo
done
