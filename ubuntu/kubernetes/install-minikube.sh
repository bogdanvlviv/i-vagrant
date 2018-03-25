#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/minikube
curl -L https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -o /tmp/minikube
cp /tmp/minikube /usr/local/bin/minikube
chmod 755 /usr/local/bin/minikube
rm /tmp/minikube
