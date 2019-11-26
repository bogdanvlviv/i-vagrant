#!/usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 4B7C549A058F8B6B
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu $2/mongodb-org/$1 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-$1.list > /dev/null
apt update

apt install -y mongodb-org
