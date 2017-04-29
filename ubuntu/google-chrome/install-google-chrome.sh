#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/curl/install-curl.sh"
apt-get install -y curl
# "ubuntu/curl/install-curl.sh"

curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /tmp/google-chrome-stable_current_amd64.deb

dpkg -i /tmp/google-chrome-stable_current_amd64.deb
apt-get install -y -f

rm /tmp/google-chrome-stable_current_amd64.deb
