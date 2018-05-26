#!/bin/bash
echo "Docker Actinium wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
ACM: NUCJTR11bPHL9goH7JoTgiy8qSGox1s9q6"

config="/config/Actinium.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.Actinium/Actinium.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.Actinium/wallet.dat
fi

echo "Starting ACM daemon..."
Actiniumd
