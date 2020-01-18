#!/bin/bash

echo "Get a token here: https://auth.livepatch.canonical.com/"
read key

sudo snap install canonical-livepatch
sudo canonical-livepatch enable $key
