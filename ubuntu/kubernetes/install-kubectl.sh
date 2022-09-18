#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

rm /tmp/kubectl
curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /tmp/kubectl
sudo cp /tmp/kubectl /usr/local/bin/kubectl
sudo chmod 755 /usr/local/bin/kubectl
rm /tmp/kubectl
