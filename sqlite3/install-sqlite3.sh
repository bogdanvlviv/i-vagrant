#!/usr/bin/env bash

apt-get update

apt-get install sqlite3

if (( $# )); then
  apt-get install -y $@
fi
