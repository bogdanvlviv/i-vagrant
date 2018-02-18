#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/vagrant_$1_x86_64.deb
curl https://releases.hashicorp.com/vagrant/$1/vagrant_$1_x86_64.deb -o /tmp/vagrant_$1_x86_64.deb

dpkg -i /tmp/vagrant_$1_x86_64.deb

rm /tmp/vagrant_$1_x86_64.deb
