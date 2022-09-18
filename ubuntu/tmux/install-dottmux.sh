#!/usr/bin/env bash

bash "ubuntu/git/install-git.sh"

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

rm -fr ~/.tmux
rm ~/.tmux.conf
git clone https://gitlab.com/bogdanvlviv/dottmux.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/
cd ~/.tmux
git remote add github git@github.com:bogdanvlviv/dottmux.git
git remote add gitlab git@gitlab.com:bogdanvlviv/dottmux.git
cd -

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.tmux/
fi
