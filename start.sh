#!/bin/bash

# Clone gist
# Modify permissions sudo chmod -x start.sh
# Run file . start.sh

echo "After a fresh install you must log out and back in again!"
echo "====="
echo "====="

echo "Fresh Install?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo chmod -x fresh_install.sh;  . fresh_install.sh; break;;
        No ) break;;
    esac
done

echo "Enable Canonicla Live Patch Service?"
echo "Read more here: https://auth.livepatch.canonical.com/"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo chmod -x livepatch.sh; . livepatch.sh; break;;
        No ) break;;
    esac
done

echo "Install Portainer?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo chmod -x portainer.sh; . portainer.sh; break;;
        No ) break;;
    esac
done
