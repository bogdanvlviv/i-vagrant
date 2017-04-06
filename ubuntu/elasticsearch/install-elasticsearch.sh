#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

bash "ubuntu/curl/install-curl.sh"
bash "ubuntu/java/install-java.sh" 9

curl https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$1.deb -o /tmp/elasticsearch-$1.deb

dpkg -i /tmp/elasticsearch-$1.deb

rm /tmp/elasticsearch-$1.deb
