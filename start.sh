#!/bin/bash

# Download PaperMC if not exists
if [ ! -f server.jar ]; then
  echo "Downloading PaperMC..."
  curl -L https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/493/downloads/paper-1.20.4-493.jar -o server.jar
fi

# Accept EULA
echo "eula=true" > eula.txt

# Download Playit
curl -L https://playit.gg/downloads/playit-linux-amd64 -o playit
chmod +x playit
./playit --secret "$PLAYIT_AGENT_KEY" &

java -Xms512M -Xmx1G -jar server.jar nogui
