#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/git/install-git.sh"
apt-get install -y git
# "ubuntu/git/install-git.sh"

apt-get install -y build-essential
apt-get install -y libevent-dev
apt-get install -y automake

rm -fr /tmp/memcached
git clone https://github.com/memcached/memcached.git /tmp/memcached
cd /tmp/memcached
sh autogen.sh
./configure && make
make install
cd -

rm -fr /tmp/memcached
