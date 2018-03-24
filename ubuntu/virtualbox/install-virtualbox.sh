#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/virtualbox-$2_Ubuntu_$3_amd64.deb
curl http://download.virtualbox.org/virtualbox/$1/virtualbox-$2~Ubuntu~$3_amd64.deb -o /tmp/virtualbox-$2_Ubuntu_$3_amd64.deb

dpkg -i /tmp/virtualbox-$2_Ubuntu_$3_amd64.deb
apt install -y -f

rm /tmp/virtualbox-$2_Ubuntu_$3_amd64.deb
