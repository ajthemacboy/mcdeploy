#!/bin/bash
cp /tmp/serverfiles/* /data/
chmod +x /data/start.sh

chown -R minecraft:minecraft /data
chmod -R u+w /data

cd /data
su -m minecraft -c /data/start.sh
