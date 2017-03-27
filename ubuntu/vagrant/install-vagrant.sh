#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

apt-get install -y curl

curl https://releases.hashicorp.com/vagrant/$1/vagrant_$1_x86_64.deb -o /tmp/vagrant_$1_x86_64.deb

dpkg -i /tmp/vagrant_$1_x86_64.deb

rm /tmp/vagrant_$1_x86_64.deb
