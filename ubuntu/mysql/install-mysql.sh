#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

echo "mysql-server mysql-server/root_password password $1" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $1" | debconf-set-selections

apt-get install -y mysql-server

shift

if (( $# )); then
  apt-get install -y $@
fi
