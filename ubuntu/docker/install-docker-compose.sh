#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

sudo curl -L https://github.com/docker/compose/releases/download/$1/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod 755 /usr/local/bin/docker-compose
