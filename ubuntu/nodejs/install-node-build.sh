#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

apt install -y autoconf
apt install -y gcc
apt install -y make
apt install -y build-essential

rm -fr ~/.nodenv/plugins/node-build
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
~/.nodenv/plugins/node-build/install.sh
