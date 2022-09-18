#!/usr/bin/env bash

sudo apt update

# "ubuntu/curl/install-curl.sh"
sudo apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/vagrant_$1-1_amd64.deb
curl https://releases.hashicorp.com/vagrant/$1/vagrant_$1-1_amd64.deb -o /tmp/vagrant_$1-1_amd64.deb

sudo dpkg -i /tmp/vagrant_$1-1_amd64.deb

rm /tmp/vagrant_$1-1_amd64.deb

shift 1

if (( $# )); then
  vagrant plugin install $@
fi
