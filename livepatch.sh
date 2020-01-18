#!/bin/bash

echo "Get a token here: https://auth.livepatch.canonical.com/"
echo "Continue...?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) read -p "Enter Key: " key; break;;
        No ) break;;
    esac
done

sudo snap install canonical-livepatch
sudo canonical-livepatch enable $key
