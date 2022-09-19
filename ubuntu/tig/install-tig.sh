#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

sudo apt update

sudo apt install -y build-essential

rm /tmp/tig-$1.tar.gz
rm -fr /tmp/tig-$1
curl -L https://github.com/jonas/tig/releases/download/tig-$1/tig-$1.tar.gz -o /tmp/tig-$1.tar.gz
tar xvzf /tmp/tig-$1.tar.gz -C /tmp
make -C /tmp/tig-$1
sudo make install prefix=/usr/local -C /tmp/tig-$1

rm /tmp/tig-$1.tar.gz
rm -fr /tmp/tig-$1
