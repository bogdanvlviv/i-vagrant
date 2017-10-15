#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/git/install-git.sh"
apt-get install -y git
# "ubuntu/git/install-git.sh"

apt-get install -y build-essential

rm -fr ~/.rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/src/configure && make -C ~/.rbenv/src

~/.rbenv/bin/rbenv init
sed -i "1ieval \"\$(rbenv init -)\"\n" ~/.bashrc
sed -i "1iexport PATH=\"\$HOME/.rbenv/bin:\$PATH\"" ~/.bashrc

sudo chown -R $1:$1 ~/.rbenv/
