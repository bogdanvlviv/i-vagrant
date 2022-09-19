#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

sudo apt update

sudo apt install -y unzip

rm /tmp/chromedriver_linux64.zip
rm -fr /tmp/chromedriver_linux64
curl -L https://chromedriver.storage.googleapis.com/$1/chromedriver_linux64.zip -o /tmp/chromedriver_linux64.zip
unzip /tmp/chromedriver_linux64.zip -d /tmp/chromedriver_linux64
sudo cp /tmp/chromedriver_linux64/chromedriver /usr/local/bin/chromedriver
sudo chmod 755 /usr/local/bin/chromedriver
rm /tmp/chromedriver_linux64.zip
rm -fr /tmp/chromedriver_linux64
