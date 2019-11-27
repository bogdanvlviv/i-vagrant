#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

rm -fr ~/.X
rm ~/.Xresources
git clone https://gitlab.com/bogdanvlviv/dotX.git ~/.X
ln -s ~/.X/.Xresources ~/
xrdb ~/.Xresources
cd ~/.X
git remote add github git@github.com:bogdanvlviv/dotX.git
git remote add gitlab git@gitlab.com:bogdanvlviv/dotX.git
cd -
