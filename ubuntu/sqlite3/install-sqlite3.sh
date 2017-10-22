#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

apt install -y sqlite3

if (( $# )); then
  apt install -y $@
fi
