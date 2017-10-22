#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

apt install -y software-properties-common

apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8

add-apt-repository "deb [arch=amd64] http://sfo1.mirrors.digitalocean.com/mariadb/repo/$1/ubuntu $2 main"

apt update

echo "mysql-server mysql-server/root_password password $3" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $3" | debconf-set-selections

apt install -y mariadb-server

shift 3

if (( $# )); then
  apt install -y $@
fi
