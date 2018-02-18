#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

apt install -y build-essential

rm -fr ~/.rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/src/configure && make -C ~/.rbenv/src

~/.rbenv/bin/rbenv init
sed -i "1ieval \"\$(rbenv init -)\"\n" ~/.bashrc
sed -i "1iexport PATH=\"\$HOME/.rbenv/bin:\$PATH\"" ~/.bashrc

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.rbenv/
fi
