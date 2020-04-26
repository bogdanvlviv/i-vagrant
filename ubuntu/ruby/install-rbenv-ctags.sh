#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
apt install -y exuberant-ctags
# "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

if [[ "$SUDO_USER" ]]; then
  HOME="/home/$SUDO_USER"
fi

rm -fr ~/.rbenv/plugins/rbenv-ctags
git clone git://github.com/tpope/rbenv-ctags.git ~/.rbenv/plugins/rbenv-ctags
