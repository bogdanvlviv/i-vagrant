#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/geckodriver.tar.gz
rm /tmp/geckodriver
curl -L https://github.com/mozilla/geckodriver/releases/download/v$1/geckodriver-v$1-linux64.tar.gz -o /tmp/geckodriver.tar.gz
tar xvzf /tmp/geckodriver.tar.gz -C /tmp
cp /tmp/geckodriver /usr/local/bin/geckodriver
rm /tmp/geckodriver.tar.gz
rm /tmp/geckodriver
