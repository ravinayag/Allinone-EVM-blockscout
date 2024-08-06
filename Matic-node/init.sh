#!/bin/bash

docker network create polygon

#update the node name
moniker_line="moniker = \"YOUR_NODE_NAME\""
sed -i "s/^moniker = .*/$moniker_line/" config.toml

#update laddr
laddr_line='laddr = "tcp://0.0.0.0:26657"'
sed -i '0,/laddr = "tcp:\/\/127.0.0.1:26657"/{s||'"$laddr_line"'|}' config.toml   

#update latest seeds 
seed_line="seeds = \"9df7ae4bf9b996c0e3436ed4cd3050dbc5742a28@43.200.206.40:26656,d9275750bc877b0276c374307f0fd7eae1d71e35@54.216.248.9:26656,1a3258eb2b69b235d4749cf9266a94567d6c0199@52.214.83.78:26656\""
sed -i "s/^seeds = .*/$seed_line/" config.toml

#update eth url
eth_rpc_line='eth_rpc_url = "https://rpc.ankr.com/eth"'
sed -i 's|eth_rpc_url = "http://localhost:9545"|'"$eth_rpc_line"'|' heimdall-config.toml

#update bor url
bor_rpc_line='bor_rpc_url = "http://bor:8545"'
sed -i 's|bor_rpc_url = "http://localhost:8545"|'"$bor_rpc_line"'|' heimdall-config.toml

#latest genesis file- testnet
curl -LJ -o genesis.json  https://github.com/maticnetwork/heimdall/blob/master/builder/files/genesis-testnet-v4.json