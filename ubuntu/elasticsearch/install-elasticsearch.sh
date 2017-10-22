#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

# "ubuntu/java/install-java.sh" 8
apt install -y software-properties-common

add-apt-repository -y ppa:webupd8team/java

apt update

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt install -y oracle-java8-installer
# "ubuntu/java/install-java.sh" 8

rm /tmp/elasticsearch-$1.deb
curl https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$1.deb -o /tmp/elasticsearch-$1.deb

dpkg -i /tmp/elasticsearch-$1.deb

rm /tmp/elasticsearch-$1.deb
