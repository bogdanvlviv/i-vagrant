#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

apt install -y libnss3-tools

curl -L https://github.com/FiloSottile/mkcert/releases/download/$1/mkcert-$1-linux-amd64 -o /usr/local/bin/mkcert
chmod 755 /usr/local/bin/mkcert
