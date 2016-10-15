#!/usr/bin/env bash

apt update

apt install -y git

rm -fr ~/.X
rm ~/.Xresources
git clone https://github.com/bogdanvlviv/dotX.git ~/.X
ln -s ~/.X/.Xresources ~/
