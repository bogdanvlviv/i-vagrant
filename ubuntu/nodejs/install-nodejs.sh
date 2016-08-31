#!/usr/bin/env bash

curl -sL https://deb.nodesource.com/setup_$1.x | sudo -E bash -
apt-get install -y nodejs
npm install npm -g
