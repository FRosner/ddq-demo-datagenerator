#!/bin/bash

while :
do
    echo $(( ( RANDOM % 100 ) - 1 )) $(head /dev/urandom | LC_ALL=C tr -dc A-Za-z0-9 | head -c 12)
    sleep 0.0$(( ( RANDOM % 10 ) + 1 ))
done | nc -lk 9999
