#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

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
