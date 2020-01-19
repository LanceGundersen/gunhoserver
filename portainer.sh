#!/bin/bash

echo "Install and Start Portainer..."
docker volume create portainer_data
docker run --name=portainer --restart=unless-stopped -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

echo "Verify Portainer Running..."
docker ps
