#!/bin/bash
path=/root/mcdeploy
cd $path

while read UUID; do
        rm -rf /dock/mcdeploy_$UUID
        grep -v $UUID uuidlist.txt > uuidlist.txt.tmp
        mv uuidlist.txt.tmp uuidlist.txt
done <uuidlist.txt

docker kill $(docker ps -a -f name=mcdeploy_ -q)
docker rm $(docker ps -a -f name=mcdeploy_ -q)
