#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

apt install -y autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev

rm -fr ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
~/.rbenv/plugins/ruby-build/install.sh
