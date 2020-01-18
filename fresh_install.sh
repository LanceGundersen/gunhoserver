#!/bin/bash

echo "Updating and Upgrading..."
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y

echo "Uninstall Old Versions of Docker..."
sudo apt-get remove docker docker-engine docker.io containerd runc -y

echo "Download Docker Dependencies..."
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

echo "Add Docker’s GPG Key..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Install Docker Repo..."
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo "Updating and Upgrading......"
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get autoremove -y

echo "Install Latest Version of Docker..."
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "Setup user..."
sudo usermod -aG docker $USER
echo "user puid="$(sudo id -u $USER)
echo "docker guid="$(sudo cut -d: -f3 < <(getent group docker))

echo "Adding to env file at /etc/environment..."
echo "PUID=$(sudo id -u $USER)" | sudo tee -a /etc/environment
echo "PGID=$(sudo cut -d: -f3 < <(getent group docker))" | sudo tee -a /etc/environment
echo "TZ=\"America/New_York\"" | sudo tee -a /etc/environment
echo "USERDIR=\"$(echo ~duotronics)\"" | sudo tee -a /etc/environment

echo "Log out and log back in so that your group membership is re-evaluated."
select yn in "Yes" "No"; do
    case $yn in
        Yes ) logout; break;;
        No ) break;;
    esac
done
