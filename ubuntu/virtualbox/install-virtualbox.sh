#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/curl/install-curl.sh"
apt-get install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/virtualbox-5.1_5.1.22-115126~Ubuntu~$1_amd64.deb
curl http://download.virtualbox.org/virtualbox/5.1.22/virtualbox-5.1_5.1.22-115126~Ubuntu~xenial_amd64.deb -o /tmp/virtualbox-5.1_5.1.22-115126~Ubuntu~xenial_amd64.deb

dpkg -i /tmp/virtualbox-5.1_5.1.22-115126~Ubuntu~$1_amd64.deb
apt-get install -y -f

rm /tmp/virtualbox-5.1_5.1.22-115126~Ubuntu~$1_amd64.deb
