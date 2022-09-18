#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

rm /tmp/minikube
curl -L https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 -o /tmp/minikube
sudo cp /tmp/minikube /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube
rm /tmp/minikube
