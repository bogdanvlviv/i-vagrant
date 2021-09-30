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

UBUNTU_RELEASE_CODENAME="focal"

# upgrade
sudo bash "ubuntu/upgrade/make-upgrade_packages.sh"

# bashrc
bash "ubuntu/bashrc/set-lc_all-variable.sh"
bash "ubuntu/bashrc/set-term-variable.sh"

# android_studio
# sudo bash "ubuntu/android_studio/install-android_studio.sh"

# asdf
sudo bash "ubuntu/asdf/install-asdf.sh" v0.8.1

# atom
# sudo bash "ubuntu/atom/install-atom.sh"

# aws
# sudo bash "ubuntu/aws/install-aws-cli.sh"

# cmus
sudo bash "ubuntu/cmus/install-cmus.sh"

# curl
sudo bash "ubuntu/curl/install-curl.sh"

# docker
sudo bash "ubuntu/docker/install-docker.sh" $UBUNTU_RELEASE_CODENAME
sudo bash "ubuntu/docker/add-sudo_user-to-docker-group.sh"
sudo bash "ubuntu/docker/install-docker-compose.sh" 1.29.2

# drawing
# sudo bash "ubuntu/drawing/install-drawing.sh"

# elasticsearch
# TODO asdf
# sudo bash "ubuntu/elasticsearch/install-elasticsearch.sh" 7.6.2

# exuberant-ctags
sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
bash "ubuntu/exuberant-ctags/set-ctags.sh"

# ffmpeg
sudo bash "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
sudo bash "ubuntu/firefox/install-firefox.sh"
sudo bash "ubuntu/firefox/install-geckodriver.sh" 0.29.1

# flatpak
sudo bash "ubuntu/flatpak/install-flatpak.sh"

# fzf
sudo bash "ubuntu/fzf/install-fzf.sh"
bash "ubuntu/fzf/set-fzf_default_command.sh"

# gimp
# sudo bash "ubuntu/gimp/install-gimp.sh"

# git
sudo bash "ubuntu/git/install-git.sh"
sudo bash "ubuntu/git/install-diff-highlight.sh"

# go
# bash "ubuntu/go/asdf-install-go.sh" 1.17

# google-chrome
sudo bash "ubuntu/google-chrome/install-google-chrome.sh"
sudo bash "ubuntu/google-chrome/install-chromedriver.sh" 94.0.4606.61

# graphiql
# sudo bash "ubuntu/graphiql/install-graphiql.sh" 0.7.2

# graphviz
sudo bash "ubuntu/graphviz/install-graphviz.sh"

# heroku
# sudo bash "ubuntu/heroku/install-heroku-cli.sh"

# htop
sudo bash "ubuntu/htop/install-htop.sh"

# imagemagick
sudo bash "ubuntu/imagemagick/install-imagemagick.sh"
sudo bash "ubuntu/imagemagick/add-imagemagick-shorthands.sh"

# java
# TODO asdf
# sudo bash "ubuntu/java/install-java.sh" 11

# jq
sudo bash "ubuntu/jq/install-jq.sh"

# kubernetes
# sudo bash "ubuntu/kubernetes/install-kubectl.sh"
# sudo bash "ubuntu/kubernetes/install-minikube.sh"

# latex
# sudo bash "ubuntu/latex/install-latex.sh" texlive-lang-cyrillic

# letsencrypt
# sudo bash "ubuntu/letsencrypt/install-letsencrypt.sh"

# libxml2
sudo bash "ubuntu/libxml2/install-libxml2.sh" libxml2-dev

# mc
sudo bash "ubuntu/mc/install-mc.sh"

# memcached
# sudo bash "ubuntu/memcached/install-memcached.sh"

# mongodb
# TODO asdf
# sudo bash "ubuntu/mongodb/install-mongodb.sh" 4.4 $UBUNTU_RELEASE_CODENAME

# mupdf
sudo bash "ubuntu/mupdf/install-mupdf.sh"

# mosh
sudo bash "ubuntu/mosh/install-mosh.sh"

# mysql
# TODO asdf
# sudo bash "ubuntu/mysql/install-mysql.sh" admin libmysqlclient-dev
# sudo bash "ubuntu/mysql/install-mariadb.sh" 10.5 $UBUNTU_RELEASE_CODENAME admin libmysqlclient-dev

# network-manager
sudo bash "ubuntu/network-manager/install-network-manager.sh"

# nginx
# sudo bash "ubuntu/nginx/install-nginx.sh"

# ngrok
sudo bash "ubuntu/ngrok/install-ngrok.sh"

# nmap
sudo bash "ubuntu/nmap/install-nmap.sh"

# nodejs
# bash "ubuntu/nodejs/asdf-install-nodejs.sh" 14.17.5
# bash "ubuntu/nodejs/asdf-install-yarn.sh" 1.22.13
# bash "ubuntu/nodejs/install-eslint.sh"
# bash "ubuntu/nodejs/install-stylelint.sh"

# openvpn
sudo bash "ubuntu/openvpn/install-openvpn.sh"
sudo bash "ubuntu/openvpn/change-openvpn_config.sh"

# phantomjs
# sudo bash "ubuntu/phantomjs/install-phantomjs.sh"

# poppler
sudo bash "ubuntu/poppler/install-poppler.sh"

# postgresql
# bash "ubuntu/postgresql/asdf-install-postgresql.sh" 12.8
# bash "ubuntu/postgresql/create-user.sh" root admin
# bash "ubuntu/postgresql/set-psqlrc.sh"

# postman
# sudo bash "ubuntu/postman/install-postman.sh"

# python
# TODO asdf
# sudo bash "ubuntu/python/install-pyenv.sh"
# sudo bash "ubuntu/python/install-python.sh" pyenv 3.9.7

# rar
sudo bash "ubuntu/rar/install-rar.sh"

# rbspy
# sudo bash "ubuntu/rbspy/install-rbspy.sh" 0.3.8

# readline
bash "ubuntu/readline/set-inputrc.sh"

# redis
# bash "ubuntu/redis/asdf-install-redis.sh" 6.2.5

# ruby
bash "ubuntu/ruby/asdf-install-ruby.sh" 3.0.2 break rubocop "tmuxinator:3.0.1" debug pry-byebug
# bash "ubuntu/ruby/prepare-for-rails-development.sh" $USER root admin

# sequeler
# sudo bash "ubuntu/sequeler/install-sequeler.sh"

# siege
# sudo bash "ubuntu/siege/install-siege.sh"

# simplescreenrecorder
# sudo bash "ubuntu/simplescreenrecorder/install-simplescreenrecorder.sh"

# slack
# sudo bash "ubuntu/slack/install-slack.sh"

# sqlite
# bash "ubuntu/sqlite/asdf-install-sqlite.sh" 3.36.0

# ssh
sudo bash "ubuntu/ssh/install-openssh-client.sh"
sudo bash "ubuntu/ssh/install-openssh-server.sh"
sudo bash "ubuntu/ssh/change-sshd_config.sh" 2222 no
bash "ubuntu/ssh/set-authorized_keys.sh"

# sublimetext
# sudo bash "ubuntu/sublimetext/install-sublimetext.sh"

# telegram
# sudo bash "ubuntu/telegram/install-telegram.sh"

# the_silver_searcher
sudo bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tig
# sudo bash "ubuntu/tig/install-tig.sh" 2.5.4

# tmate
# sudo bash "ubuntu/tmate/install-tmate.sh"

# tmux
sudo bash "ubuntu/tmux/install-tmux.sh" 3.2a
sudo bash "ubuntu/tmux/install-dottmux.sh"

# tor
# sudo bash "ubuntu/tor/install-tor.sh"

# tree
sudo bash "ubuntu/tree/install-tree.sh"

# vagrant
# sudo bash "ubuntu/vagrant/install-vagrant.sh" 2.2.18 vagrant-disksize

# viber
# sudo bash "ubuntu/viber/install-viber.sh"

# vim
sudo bash "ubuntu/vim/install-vim.sh"
sudo bash "ubuntu/vim/install-dotvim.sh"
bash "ubuntu/vim/set-vim-as-default-editor.sh"

# virtualbox
# sudo bash "ubuntu/virtualbox/install-virtualbox.sh" 6.1.26 6.1_6.1.26-145957 eoan
# sudo bash "ubuntu/virtualbox/install-virtualbox.sh" 6.1.26 6.1_6.1.26-145957 $UBUNTU_RELEASE_CODENAME

# vscode
# sudo bash "ubuntu/vscode/install-vscode.sh"

# wkhtmltopdf
# sudo bash "ubuntu/wkhtmltopdf/install-wkhtmltopdf.sh" 0.12.6 $UBUNTU_RELEASE_CODENAME

# xclip
sudo bash "ubuntu/xclip/install-xclip.sh"
bash "ubuntu/xclip/add-xclip-shorthands.sh"

# xournal
# sudo bash "ubuntu/xournal/install-xournal.sh"

# xterm
sudo bash "ubuntu/xterm/install-xterm.sh"
sudo bash "ubuntu/xterm/install-dotX.sh"

# zoom
# sudo bash "ubuntu/zoom/install-zoom.sh"

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://gitlab.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
