#!/usr/bin/env bash

apt update

apt install -y ruby

if (( $# )); then
  gem install $@
fi
