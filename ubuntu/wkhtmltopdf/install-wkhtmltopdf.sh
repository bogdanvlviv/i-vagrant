#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

apt install -y xfonts-75dpi

rm /tmp/wkhtmltopdf-$1.deb
curl -L https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/$1/wkhtmltox_$1-1.$2_amd64.deb -o /tmp/wkhtmltopdf-$1.deb

dpkg -i /tmp/wkhtmltopdf-$1.deb

rm /tmp/wkhtmltopdf-$1.deb
