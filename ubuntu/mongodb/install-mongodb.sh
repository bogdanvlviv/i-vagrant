#!/usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu $2/mongodb-org/$1 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-$1.list > /dev/null
apt update

apt install -y mongodb-org
