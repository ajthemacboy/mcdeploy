#!/bin/bash
cd /data/

while true
do
    java -server -XX:+UseConcMarkSweepGC -XX:+ExplicitGCInvokesConcurrent -XX:+AggressiveOpts -XX:-UseAdaptiveSizePolicy -XX:MinHeapFreeRatio=10 -XX:MaxHeapFreeRatio=10 -Xmx512M -jar paperclip.jar nogui
    echo "Rebooting now!"
done
