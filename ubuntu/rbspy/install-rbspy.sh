#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

rm /tmp/rbspy.tar.gz
rm /tmp/rbspy
curl -L https://github.com/rbspy/rbspy/releases/download/$1/rbspy-$1-x86_64-unknown-linux-musl.tar.gz -o /tmp/rbspy.tar.gz
tar xvzf /tmp/rbspy.tar.gz -C /tmp
sudo cp /tmp/rbspy /usr/local/bin/rbspy
rm /tmp/rbspy.tar.gz
rm /tmp/rbspy
