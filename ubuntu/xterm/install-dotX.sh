#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

sudo apt-get install -y git

rm -fr ~/.X
rm ~/.Xresources
git clone https://github.com/bogdanvlviv/dotX.git ~/.X
ln -s ~/.X/.Xresources ~/
xrdb ~/.Xresources
