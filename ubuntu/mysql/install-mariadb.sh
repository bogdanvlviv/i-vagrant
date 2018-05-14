#!/usr/bin/env bash

apt update

apt install -y software-properties-common

apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8

add-apt-repository "deb [arch=amd64] http://mirrors.dotsrc.org/mariadb/repo/$1/ubuntu $2 main"

apt update

echo "mysql-server mysql-server/root_password password $3" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $3" | debconf-set-selections

apt install -y mariadb-server

shift 3

if (( $# )); then
  apt install -y $@
fi
