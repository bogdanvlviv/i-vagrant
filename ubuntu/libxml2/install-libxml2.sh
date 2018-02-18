#!/usr/bin/env bash

apt update

apt install -y libxml2

if (( $# )); then
  apt install -y $@
fi
