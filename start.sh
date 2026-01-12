#!/bin/bash

echo "Starting Playit..."
curl -L https://playit.gg/downloads/playit-linux-amd64 -o playit
chmod +x playit
./playit &

echo "Starting Minecraft..."
java -Xms512M -Xmx1G -jar server.jar nogui
