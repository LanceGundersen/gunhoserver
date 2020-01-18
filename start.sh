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
        Yes ) sh fresh_install.sh; break;;
        No ) sh break;;
    esac
done

echo "Install Portainer?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sh portainer.sh; break;;
        No ) sh break;;
    esac
done
