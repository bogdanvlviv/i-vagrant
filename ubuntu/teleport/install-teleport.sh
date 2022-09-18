#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

sudo curl https://apt.releases.teleport.dev/gpg  -o /usr/share/keyrings/teleport-archive-keyring.asc
echo "deb [signed-by=/usr/share/keyrings/teleport-archive-keyring.asc]  https://apt.releases.teleport.dev/ubuntu $1 stable/v10" | sudo tee /etc/apt/sources.list.d/teleport.list > /dev/null

sudo apt update

sudo apt install -y teleport
