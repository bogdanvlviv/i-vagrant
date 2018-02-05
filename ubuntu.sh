#!/usr/bin/env bash

sudo bash -c ""
echo "Are you ready to start?"
echo -n "Type 'yes' or operation will be aborted: "
read answer_for_the_start
if [[ "$answer_for_the_start" != "yes" ]]; then
  echo ""
  echo "Aborted!"
  echo ""
  return
fi

UBUNTU_RELEASE_CODENAME="xenial"

export RUN_APT_UPDATE_BEFORE="no"

# upgrade
sudo bash "ubuntu/upgrade/make-upgrade_packages.sh"

# bashrc
bash "ubuntu/bashrc/set-lc_all-variable.sh"
bash "ubuntu/bashrc/set-term-variable.sh"

# cmus
sudo bash "ubuntu/cmus/install-cmus.sh"

# curl
sudo bash "ubuntu/curl/install-curl.sh"

# docker
sudo bash "ubuntu/docker/install-docker.sh" $UBUNTU_RELEASE_CODENAME

# elasticsearch
sudo bash "ubuntu/elasticsearch/install-elasticsearch.sh" 5.6.3

# exuberant-ctags
sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

# ffmpeg
sudo bash "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
sudo bash "ubuntu/firefox/install-firefox.sh"
sudo bash "ubuntu/firefox/install-geckodriver.sh" 0.19.1

# flatpak
sudo bash "ubuntu/flatpak/install-flatpak.sh"

# fzf
bash "ubuntu/fzf/install-fzf.sh"
bash "ubuntu/fzf/set-fzf_default_command.sh"

# gimp
sudo bash "ubuntu/gimp/install-gimp.sh"

# git
sudo bash "ubuntu/git/install-git.sh"

# google-chrome
sudo bash "ubuntu/google-chrome/install-google-chrome.sh"
sudo bash "ubuntu/google-chrome/install-chromedriver.sh" 2.33

# graphviz
sudo bash "ubuntu/graphviz/install-graphviz.sh"

# heroku
sudo bash "ubuntu/heroku/install-heroku-cli.sh"

# htop
sudo bash "ubuntu/htop/install-htop.sh"

# imagemagick
sudo bash "ubuntu/imagemagick/install-imagemagick.sh"

# java
sudo bash "ubuntu/java/install-java.sh" 9

# letsencrypt
sudo bash "ubuntu/letsencrypt/install-letsencrypt.sh"

# libxml2
sudo bash "ubuntu/libxml2/install-libxml2.sh" libxml2-dev

# mc
sudo bash "ubuntu/mc/install-mc.sh"

# memcached
sudo bash "ubuntu/memcached/install-memcached.sh"

# mongodb
sudo bash "ubuntu/mongodb/install-mongodb.sh" 3.4 $UBUNTU_RELEASE_CODENAME

# mupdf
sudo bash "ubuntu/mupdf/install-mupdf.sh"

# mosh
sudo bash "ubuntu/mosh/install-mosh.sh"

# mysql
# sudo bash "ubuntu/mysql/install-mysql.sh" admin libmysqlclient-dev
sudo bash "ubuntu/mysql/install-mariadb.sh" 10.2 $UBUNTU_RELEASE_CODENAME admin libmysqlclient-dev

# network-manager
sudo bash "ubuntu/network-manager/install-network-manager.sh"

# nginx
sudo bash "ubuntu/nginx/install-nginx.sh"

# nmap
sudo bash "ubuntu/nmap/install-nmap.sh"

# nodejs
bash "ubuntu/nodejs/install-nvm.sh" 0.33.6
bash "ubuntu/nodejs/install-nodejs.sh" 8.7.0
sudo bash "ubuntu/nodejs/install-yarn.sh"
bash "ubuntu/nodejs/install-eslint.sh"
bash "ubuntu/nodejs/install-stylelint.sh"

# overmind
sudo bash "ubuntu/overmind/install-overmind.sh" 1.1.1

# phantomjs
sudo bash "ubuntu/phantomjs/install-phantomjs.sh"

# postgresql
sudo bash "ubuntu/postgresql/install-postgresql.sh" 10 $UBUNTU_RELEASE_CODENAME libpq-dev
sudo bash "ubuntu/postgresql/create-user.sh" root admin
bash "ubuntu/postgresql/set-psqlrc.sh"

# python
sudo bash "ubuntu/python/install-pyenv.sh"
sudo bash "ubuntu/python/install-python.sh" pyenv 2.7.14

# readline
bash "ubuntu/readline/set-inputrc.sh"

# redis
sudo bash "ubuntu/redis/install-redis.sh"

# ruby
sudo bash "ubuntu/ruby/install-rbenv.sh"
sudo bash "ubuntu/ruby/install-ruby-build.sh"
sudo bash "ubuntu/ruby/install-rbenv-ctags.sh"
sudo bash "ubuntu/ruby/install-rbenv-vars.sh"
# sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 1.9.3-p551 bundler
# sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.0.0-p648 bundler
# sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.1.10 bundler
# sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.2.9 bundler
# sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.3.6 bundler
# sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.4.3 bundler
sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.5.0 bundler jekyll rabbit rails rubocop "tmuxinator:0.10.1"

# simplescreenrecorder
sudo bash "ubuntu/simplescreenrecorder/install-simplescreenrecorder.sh"

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

# tor
sudo bash "ubuntu/tor/install-tor.sh"

# tree
sudo bash "ubuntu/tree/install-tree.sh"

# vagrant
sudo bash "ubuntu/vagrant/install-vagrant.sh" 2.0.0

# vim
sudo bash "ubuntu/vim/install-vim.sh"
bash "ubuntu/vim/install-dotvim.sh"
bash "ubuntu/vim/set-vim-as-default-editor.sh"

# virtualbox
sudo bash "ubuntu/virtualbox/install-virtualbox.sh" $UBUNTU_RELEASE_CODENAME

# xclip
sudo bash "ubuntu/xclip/install-xclip.sh"

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
