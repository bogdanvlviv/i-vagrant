#!/usr/bin/env bash

apt-get update

apt-get install -y curl

curl -sL https://deb.nodesource.com/setup_$1.x | sudo -E bash -
apt-get install -y nodejs
npm install npm -g
