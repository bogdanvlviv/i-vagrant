#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

# "ubuntu/java/install-java.sh" 11
apt install -y openjdk-11-jre
# "ubuntu/java/install-java.sh" 11

rm /tmp/elasticsearch-$1.deb
curl https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$1-amd64.deb -o /tmp/elasticsearch-$1.deb

dpkg -i /tmp/elasticsearch-$1.deb

rm /tmp/elasticsearch-$1.deb
