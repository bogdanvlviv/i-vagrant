#!/usr/bin/env bash

apt-get update

apt-get install -y curl

curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 -o /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar xvjf /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /tmp
cp /tmp/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
rm /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2
rm -fr /tmp/phantomjs-2.1.1-linux-x86_64
