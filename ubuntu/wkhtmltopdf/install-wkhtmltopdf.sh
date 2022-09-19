#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

rm /tmp/wkhtmltopdf-$1.deb
curl -L https://github.com/wkhtmltopdf/packaging/releases/download/$1-1/wkhtmltox_$1-1.$2_amd64.deb -o /tmp/wkhtmltopdf-$1.deb

sudo dpkg -i /tmp/wkhtmltopdf-$1.deb

rm /tmp/wkhtmltopdf-$1.deb

sudo apt --fix-broken install -y
