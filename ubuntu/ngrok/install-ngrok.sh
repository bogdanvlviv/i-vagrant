#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

apt install -y unzip

rm /tmp/ngrok-stable-linux-amd64.zip
rm -fr /tmp/ngrok-stable-linux-amd64
curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o /tmp/ngrok-stable-linux-amd64.zip
unzip /tmp/ngrok-stable-linux-amd64.zip -d /tmp/ngrok-stable-linux-amd64
cp /tmp/ngrok-stable-linux-amd64/ngrok /usr/local/bin/ngrok
rm /tmp/ngrok-stable-linux-amd64.zip
rm -fr /tmp/ngrok-stable-linux-amd64
