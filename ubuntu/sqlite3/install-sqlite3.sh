#!/usr/bin/env bash

apt-get update

apt-get install -y sqlite3

if (( $# )); then
  apt-get install -y $@
fi
