#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

apt-get install -y apt-transport-https
apt-get install -y ca-certificates
apt-get install -y curl
apt-get install -y software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $1 stable"

apt-get update

apt-get install -y docker-ce
