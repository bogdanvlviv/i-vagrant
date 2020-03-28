#!/usr/bin/env bash

apt update

apt install -y texlive-latex-extra

if (( $# )); then
  apt install -y $@
fi
