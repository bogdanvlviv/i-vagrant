#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

sudo apt update

sudo apt install -y libnss3-tools

sudo curl -L https://github.com/FiloSottile/mkcert/releases/download/$1/mkcert-$1-linux-amd64 -o /usr/local/bin/mkcert
sudo chmod 755 /usr/local/bin/mkcert
