#!/usr/bin/env bash

sudo apt update

sudo apt install -y libxml2

if (( $# )); then
  sudo apt install -y $@
fi
