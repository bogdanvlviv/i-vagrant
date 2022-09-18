#!/usr/bin/env bash

bash "ubuntu/git/install-git.sh"

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

rm -fr ~/.X
rm ~/.Xresources
git clone https://gitlab.com/bogdanvlviv/dotX.git ~/.X
ln -s ~/.X/.Xresources ~/
xrdb ~/.Xresources
cd ~/.X
git remote add github git@github.com:bogdanvlviv/dotX.git
git remote add gitlab git@gitlab.com:bogdanvlviv/dotX.git
cd -

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.X/
fi
