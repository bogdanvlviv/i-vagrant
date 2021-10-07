#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

apt install -y apt-transport-https
apt install -y software-properties-common

curl -fsSL https://deb.releases.teleport.dev/teleport-pubkey.asc | apt-key add -

add-apt-repository "deb https://deb.releases.teleport.dev/ stable main"

apt update

apt install -y teleport
