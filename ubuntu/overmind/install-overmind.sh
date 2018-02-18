#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/overmind-linux-amd64.gz
curl -L https://github.com/DarthSim/overmind/releases/download/v$1/overmind-v$1-linux-amd64.gz -o /tmp/overmind-linux-amd64.gz
gunzip -c /tmp/overmind-linux-amd64.gz | tee /usr/local/bin/overmind > /dev/null
chmod 755 /usr/local/bin/overmind
rm /tmp/overmind-linux-amd64.gz
