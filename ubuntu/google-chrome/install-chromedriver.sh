#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

apt install -y unzip

rm /tmp/chromedriver_linux64.zip
rm -fr /tmp/chromedriver_linux64
curl -L https://chromedriver.storage.googleapis.com/$1/chromedriver_linux64.zip -o /tmp/chromedriver_linux64.zip
unzip /tmp/chromedriver_linux64.zip -d /tmp/chromedriver_linux64
cp /tmp/chromedriver_linux64/chromedriver /usr/local/bin/chromedriver
chmod 755 /usr/local/bin/chromedriver
rm /tmp/chromedriver_linux64.zip
rm -fr /tmp/chromedriver_linux64
