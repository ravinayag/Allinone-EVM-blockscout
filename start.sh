#!/bin/bash
cd ~ 
echo "Update the blockchain  and block number to fork at ./envs/hh-env"
echo "Pausing for 10 secs to ctrl+c, start again the script" 
sleep 10
docker-compose -f docker-compose.yaml up -d 
