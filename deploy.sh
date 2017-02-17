#!/bin/bash
path=/root/mcdeploy
cd $path

read -p "Enter port range in x..x format: " portrange

for i in $(eval echo "{$portrange}")
do
        rm .env
        uuid=$(cat /proc/sys/kernel/random/uuid)
        echo "UUID="$uuid >> .env
        echo "PORT="$i >> .env
        echo "COMPOSE_PROJECT_NAME="$uuid >> .env
        docker-compose up -d --force-recreate
        echo $uuid >> uuidlist.txt
done
