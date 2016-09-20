#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git

rm -fr ~/.X
git clone https://github.com/bogdanvlviv/dotX.git ~/.X
ln -s ~/.X/.Xresources ~/
xrdb ~/.Xresources
