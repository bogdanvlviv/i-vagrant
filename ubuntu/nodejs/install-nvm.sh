#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v$1/install.sh | bash
