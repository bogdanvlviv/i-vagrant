#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

rm -fr ~/.rbenv/plugins/rbenv-vars
git clone https://github.com/rbenv/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
