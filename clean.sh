#!/bin/bash
cd ~ 
docker-compose -f docker-compose.yaml down -v
sudo rm -rf blockscout-db-data/* logs/*  redis-data/*  stats-db-data/*
