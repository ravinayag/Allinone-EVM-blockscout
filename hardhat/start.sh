#!/bin/sh
#source /usr/src/app/.env

if [ -n "$BC_NETWORK" ]; then
    echo "Environment variable is set. Starting the $BC_NETWORK ... with $BC_BLOCK_NUMBER"
    npx hardhat node --fork $BC_NETWORK  --fork-block-number $BC_BLOCK_NUMBER
else
    echo "Environment variable is not set, hence starting the default local node"
    npx hardhat node
fi    
