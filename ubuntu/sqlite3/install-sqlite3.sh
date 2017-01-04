#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

apt-get install -y sqlite3

if (( $# )); then
  apt-get install -y $@
fi
