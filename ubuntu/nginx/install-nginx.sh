#!/usr/bin/env bash

sudo apt update

# "ubuntu/curl/install-curl.sh"
sudo apt install -y curl
# "ubuntu/curl/install-curl.sh"

sudo apt install -y gnupg2
sudo apt install -y ca-certificates
sudo apt install -y lsb-release
sudo apt install -y ubuntu-keyring

curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] http://nginx.org/packages/ubuntu $1 nginx" | sudo tee /etc/apt/sources.list.d/nginx.list

echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" | sudo tee /etc/apt/preferences.d/99nginx

sudo apt update

sudo apt install -y nginx
