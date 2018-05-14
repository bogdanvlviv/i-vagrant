#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/wkhtmltox.tar.xz
rm -fr /tmp/wkhtmltox
curl -L https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/$1/wkhtmltox-$1_linux-generic-amd64.tar.xz -o /tmp/wkhtmltox.tar.xz
tar xvf /tmp/wkhtmltox.tar.xz -C /tmp
cp /tmp/wkhtmltox/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf
rm /tmp/wkhtmltox.tar.xz
rm -fr /tmp/wkhtmltox
