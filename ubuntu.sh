#!/usr/bin/env bash

UBUNTU_RELEASE_CODENAME="$(lsb_release -cs)"

# bashrc
bash "ubuntu/bashrc/set-lc_all-variable.sh"
bash "ubuntu/bashrc/set-term-variable.sh"

# curl
sudo bash "ubuntu/curl/install-curl.sh"

# exuberant-ctags
sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

# fzf
bash "ubuntu/fzf/install-fzf.sh"

# git
sudo bash "ubuntu/git/install-git.sh"

# graphviz
sudo bash "ubuntu/graphviz/install-graphviz.sh"

# htop
sudo bash "ubuntu/htop/install-htop.sh"

# imagemagick
sudo bash "ubuntu/imagemagick/install-imagemagick.sh"

# java
sudo bash "ubuntu/java/install-java.sh" 7
sudo bash "ubuntu/java/install-java.sh" 8
sudo bash "ubuntu/java/install-java.sh" 9

# mc
sudo bash "ubuntu/mc/install-mc.sh"

# mongodb
sudo bash "ubuntu/mongodb/install-mongodb.sh" 3.2 $UBUNTU_RELEASE_CODENAME

# mosh
sudo bash "ubuntu/mosh/install-mosh.sh"

# mysql
sudo bash "ubuntu/mysql/install-mysql.sh" admin libmysqlclient-dev

# nmap
sudo bash "ubuntu/nmap/install-nmap.sh"

# nodejs
bash "ubuntu/nodejs/install-nvm.sh" 0.31.7
bash "ubuntu/nodejs/install-nodejs.sh" 4.5.0
bash "ubuntu/nodejs/install-nodejs.sh" 5.12.0
bash "ubuntu/nodejs/install-nodejs.sh" 6.5.0

# phantomjs
sudo bash "ubuntu/phantomjs/install-phantomjs.sh"

# postgresql
sudo bash "ubuntu/postgresql/install-postgresql.sh" 9.5 $UBUNTU_RELEASE_CODENAME libpq-dev
sudo bash "ubuntu/postgresql/create-user.sh" root admin

# readline
bash "ubuntu/readline/set-inputrc.sh"

# redis
sudo bash "ubuntu/redis/install-redis.sh"

#ruby
bash "ubuntu/ruby/install-rvm.sh" stable
bash "ubuntu/ruby/install-ruby.sh" 1.9.3 bundler
bash "ubuntu/ruby/install-ruby.sh" 2.0.0 bundler
bash "ubuntu/ruby/install-ruby.sh" 2.1.9 bundler
bash "ubuntu/ruby/install-ruby.sh" 2.2.5 bundler
bash "ubuntu/ruby/install-ruby.sh" 2.3.1 bundler rails rubocop tmuxinator

# sqlite3
sudo bash "ubuntu/sqlite3/install-sqlite3.sh" libsqlite3-dev

# ssh
sudo bash "ubuntu/ssh/install-openssh-client.sh"
sudo bash "ubuntu/ssh/install-openssh-server.sh"
sudo bash "ubuntu/ssh/change-sshd_config.sh" 2222 no
bash "ubuntu/ssh/set-authorized_keys.sh"

# the_silver_searcher
sudo bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tmux
sudo bash "ubuntu/tmux/install-tmux.sh"
bash "ubuntu/tmux/install-dottmux.sh"

# vagrant
sudo bash "ubuntu/vagrant/install-vagrant.sh" 1.8.5

# vim
sudo bash "ubuntu/vim/install-vim.sh"
bash "ubuntu/vim/install-dotvim.sh"
bash "ubuntu/vim/set-vim-as-default-editor.sh"

# xterm
sudo bash "ubuntu/xterm/install-xterm.sh"
bash "ubuntu/xterm/install-dotX.sh"

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://github.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
