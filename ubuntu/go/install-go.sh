#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/go.tar.gz
rm -fr /tmp/go
curl https://dl.google.com/go/go$1.linux-amd64.tar.gz -o /tmp/go.tar.gz
tar xvzf /tmp/go.tar.gz -C /tmp
rm -fr /usr/local/go
cp -r /tmp/go /usr/local/go
rm /tmp/go.tar.gz
rm -fr /tmp/go
