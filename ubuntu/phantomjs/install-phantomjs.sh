#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/curl/install-curl.sh"
apt-get install -y curl
# "ubuntu/curl/install-curl.sh"

curl -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 -o /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2
tar xvjf /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2 -C /tmp
cp /tmp/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs
rm /tmp/phantomjs-2.1.1-linux-x86_64.tar.bz2
rm -fr /tmp/phantomjs-2.1.1-linux-x86_64
