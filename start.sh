#!/bin/bash

# Clone gist
# Modify permissions sudo chmod -x start.sh
# Run file . start.sh

echo "After a fresh install you must log out and back in again!"
echo "====="
echo "====="

sudo chmod -x portainer.sh

echo "Fresh Install?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) ./fresh_install.sh; break;;
        No ) break;;
    esac
done

echo "Install Portainer?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo chmod -x portainer.sh; ./portainer.sh; break;;
        No ) break;;
    esac
done
