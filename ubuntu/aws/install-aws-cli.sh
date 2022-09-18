#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

sudo apt update

sudo apt install -y unzip

curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscliv2.zip
unzip /tmp/awscliv2.zip -d /tmp/awscliv2
sudo yes y | sudo /tmp/awscliv2/aws/install
rm /tmp/awscliv2.zip
rm -fr /tmp/awscliv2
