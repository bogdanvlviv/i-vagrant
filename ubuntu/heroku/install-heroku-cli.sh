#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

curl -o- https://cli-assets.heroku.com/install-ubuntu.sh | bash
