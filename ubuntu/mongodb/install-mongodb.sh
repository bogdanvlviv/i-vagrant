#!/usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu $2/mongodb-org/$1 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-$1.list > /dev/null
apt update

apt install -y mongodb-org
