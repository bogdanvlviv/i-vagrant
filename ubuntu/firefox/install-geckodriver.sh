#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

rm /tmp/geckodriver.tar.gz
rm /tmp/geckodriver
curl -L https://github.com/mozilla/geckodriver/releases/download/$1/geckodriver-$1-linux64.tar.gz -o /tmp/geckodriver.tar.gz
tar xvzf /tmp/geckodriver.tar.gz -C /tmp
sudo cp /tmp/geckodriver /usr/local/bin/geckodriver
rm /tmp/geckodriver.tar.gz
rm /tmp/geckodriver
