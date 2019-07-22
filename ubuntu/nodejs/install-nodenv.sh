#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

apt install -y build-essential

rm -fr ~/.nodenv
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
~/.nodenv/src/configure && make -C ~/.nodenv/src

~/.nodenv/bin/nodenv init
sed -i "1ieval \"\$(nodenv init -)\"\n" ~/.bashrc
sed -i "1iexport PATH=\"\$HOME/.nodenv/bin:\$PATH\"" ~/.bashrc

if [[ "$SUDO_USER" ]]; then
  chown -R $SUDO_USER:$SUDO_USER ~/.nodenv/
fi
