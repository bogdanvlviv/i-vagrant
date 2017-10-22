#!/usr/bin/env bash

if [[ "$RUN_APT_UPDATE_BEFORE" != "no" ]]; then
  apt update
fi

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

rm -fr ~/.X
rm ~/.Xresources
git clone https://github.com/bogdanvlviv/dotX.git ~/.X
ln -s ~/.X/.Xresources ~/
xrdb ~/.Xresources
