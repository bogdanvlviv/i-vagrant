#!/usr/bin/env bash

apt update

echo "mysql-server mysql-server/root_password password $1" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $1" | debconf-set-selections

apt install -y mysql-server

shift

if (( $# )); then
  apt install -y $@
fi
