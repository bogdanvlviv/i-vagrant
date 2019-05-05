#!/usr/bin/env bash

apt update

# "ubuntu/git/install-git.sh"
apt install -y git
# "ubuntu/git/install-git.sh"

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

apt install -y autoconf
apt install -y bison
apt install -y build-essential
apt install -y libssl-dev
apt install -y libyaml-dev
apt install -y libreadline6-dev
apt install -y zlib1g-dev
apt install -y libncurses5-dev
apt install -y libffi-dev
apt install -y libgdbm3
apt install -y libgdbm-dev

rm -fr ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
~/.rbenv/plugins/ruby-build/install.sh
