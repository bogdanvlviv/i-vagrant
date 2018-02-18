#!/usr/bin/env bash

apt update

apt install -y sqlite3

if (( $# )); then
  apt install -y $@
fi
