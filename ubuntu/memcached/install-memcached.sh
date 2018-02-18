#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

apt install -y build-essential
apt install -y libevent-dev
apt install -y automake

rm -fr /tmp/memcached
git clone https://github.com/memcached/memcached.git /tmp/memcached
cd /tmp/memcached
sh autogen.sh
./configure && make
make install
cd -

rm -fr /tmp/memcached
