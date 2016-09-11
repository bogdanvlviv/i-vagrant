#!/usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu $2/mongodb-org/$1 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-$1.list > /dev/null
apt-get update

apt-get install -y mongodb-org

if (( $2 = "xenial" )); then
  echo "[Unit]" | tee /lib/systemd/system/mongod.service > /dev/null
  echo "Description=High-performance, schema-free document-oriented database" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "After=network.target" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "Documentation=https://docs.mongodb.org/manual" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "[Service]" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "User=mongodb" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "Group=mongodb" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "[Install]" | tee -a /lib/systemd/system/mongod.service > /dev/null
  echo "WantedBy=multi-user.target" | tee -a /lib/systemd/system/mongod.service > /dev/null
fi

shift 2

if (( $# )); then
  apt-get install -y $@
fi
