#!/usr/bin/env bash

sudo apt update

sudo apt install -y texlive-latex-extra

if (( $# )); then
  sudo apt install -y $@
fi
