#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/virtualbox-5.2_5.2.0-118431~Ubuntu~$1_amd64.deb
curl http://download.virtualbox.org/virtualbox/5.2.0/virtualbox-5.2_5.2.0-118431~Ubuntu~$1_amd64.deb -o /tmp/virtualbox-5.2_5.2.0-118431~Ubuntu~$1_amd64.deb

dpkg -i /tmp/virtualbox-5.2_5.2.0-118431~Ubuntu~$1_amd64.deb
apt install -y -f

rm /tmp/virtualbox-5.2_5.2.0-118431~Ubuntu~$1_amd64.deb
