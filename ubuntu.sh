#!/usr/bin/env bash

sudo --user=$USER bash -c ""
echo "\$USER: $USER"
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
sudo --user=$USER bash "ubuntu/upgrade/make-upgrade_packages.sh"

# bashrc
bash "ubuntu/bashrc/set-lc_all-variable.sh"
bash "ubuntu/bashrc/set-term-variable.sh"

# android_studio
# sudo --user=$USER bash "ubuntu/android_studio/install-android_studio.sh"

# atom
# sudo --user=$USER bash "ubuntu/atom/install-atom.sh"

# aws
# sudo --user=$USER bash "ubuntu/aws/install-aws-cli.sh"

# cmus
sudo --user=$USER bash "ubuntu/cmus/install-cmus.sh"

# curl
sudo --user=$USER bash "ubuntu/curl/install-curl.sh"

# docker
# TODO Fix for focal version: https://docs.docker.com/engine/install/ubuntu/
sudo --user=$USER bash "ubuntu/docker/install-docker.sh" $UBUNTU_RELEASE_CODENAME
sudo --user=$USER bash "ubuntu/docker/add-sudo_user-to-docker-group.sh"
sudo --user=$USER bash "ubuntu/docker/install-docker-compose.sh" 1.25.5

# drawing
# sudo --user=$USER bash "ubuntu/drawing/install-drawing.sh"

# elasticsearch
# sudo --user=$USER bash "ubuntu/elasticsearch/install-elasticsearch.sh" 7.6.2

# exuberant-ctags
sudo --user=$USER bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
bash "ubuntu/exuberant-ctags/set-ctags.sh"

# ffmpeg
sudo --user=$USER bash "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
sudo --user=$USER bash "ubuntu/firefox/install-firefox.sh"
sudo --user=$USER bash "ubuntu/firefox/install-geckodriver.sh" 0.26.0

# flatpak
sudo --user=$USER bash "ubuntu/flatpak/install-flatpak.sh"

# fzf
bash "ubuntu/fzf/install-fzf.sh"
bash "ubuntu/fzf/set-fzf_default_command.sh"

# gimp
# sudo --user=$USER bash "ubuntu/gimp/install-gimp.sh"

# git
sudo --user=$USER bash "ubuntu/git/install-git.sh"
sudo --user=$USER bash "ubuntu/git/install-diff-highlight.sh"

# go
# sudo --user=$USER bash "ubuntu/go/install-go.sh" 1.14.2
# bash "ubuntu/go/set-go-bin-to-path-variable.sh"

# google-chrome
sudo --user=$USER bash "ubuntu/google-chrome/install-google-chrome.sh"
sudo --user=$USER bash "ubuntu/google-chrome/install-chromedriver.sh" 83.0.4103.14

# graphiql
# sudo --user=$USER bash "ubuntu/graphiql/install-graphiql.sh" 0.7.2

# graphviz
sudo --user=$USER bash "ubuntu/graphviz/install-graphviz.sh"

# heroku
# sudo --user=$USER bash "ubuntu/heroku/install-heroku-cli.sh"

# htop
sudo --user=$USER bash "ubuntu/htop/install-htop.sh"

# imagemagick
sudo --user=$USER bash "ubuntu/imagemagick/install-imagemagick.sh"
sudo --user=$USER bash "ubuntu/imagemagick/add-imagemagick-shorthands.sh"

# java
# sudo --user=$USER bash "ubuntu/java/install-java.sh" 11

# jq
sudo --user=$USER bash "ubuntu/jq/install-jq.sh"

# kubernetes
# sudo --user=$USER bash "ubuntu/kubernetes/install-kubectl.sh"
# sudo --user=$USER bash "ubuntu/kubernetes/install-minikube.sh"

# latex
# sudo --user=$USER bash "ubuntu/latex/install-latex.sh" texlive-lang-cyrillic

# letsencrypt
# sudo --user=$USER bash "ubuntu/letsencrypt/install-letsencrypt.sh"

# libxml2
sudo --user=$USER bash "ubuntu/libxml2/install-libxml2.sh" libxml2-dev

# mc
sudo --user=$USER bash "ubuntu/mc/install-mc.sh"

# memcached
# sudo --user=$USER bash "ubuntu/memcached/install-memcached.sh"

# mongodb
# TODO Fix for focal version: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/index.html
# sudo --user=$USER bash "ubuntu/mongodb/install-mongodb.sh" 4.4 $UBUNTU_RELEASE_CODENAME

# mupdf
sudo --user=$USER bash "ubuntu/mupdf/install-mupdf.sh"

# mosh
sudo --user=$USER bash "ubuntu/mosh/install-mosh.sh"

# mysql
# sudo --user=$USER bash "ubuntu/mysql/install-mysql.sh" admin libmysqlclient-dev
# sudo --user=$USER bash "ubuntu/mysql/install-mariadb.sh" 10.5 $UBUNTU_RELEASE_CODENAME admin libmysqlclient-dev

# network-manager
sudo --user=$USER bash "ubuntu/network-manager/install-network-manager.sh"

# nginx
# sudo --user=$USER bash "ubuntu/nginx/install-nginx.sh"

# ngrok
sudo --user=$USER bash "ubuntu/ngrok/install-ngrok.sh"

# nmap
sudo --user=$USER bash "ubuntu/nmap/install-nmap.sh"

# nodejs
# sudo --user=$USER bash "ubuntu/nodejs/install-nodenv.sh"
# sudo --user=$USER bash "ubuntu/nodejs/install-node-build.sh"
# bash "ubuntu/nodejs/install-nodejs.sh" nodenv 12.16.2
# sudo --user=$USER bash "ubuntu/nodejs/install-yarn.sh"
# bash "ubuntu/nodejs/install-eslint.sh"
# bash "ubuntu/nodejs/install-stylelint.sh"

# openvpn
sudo --user=$USER bash "ubuntu/openvpn/install-openvpn.sh"
sudo --user=$USER bash "ubuntu/openvpn/change-openvpn_config.sh"

# phantomjs
# sudo --user=$USER bash "ubuntu/phantomjs/install-phantomjs.sh"

# poppler
sudo --user=$USER bash "ubuntu/poppler/install-poppler.sh"

# postgresql
# sudo --user=$USER bash "ubuntu/postgresql/install-postgresql.sh" 12 $UBUNTU_RELEASE_CODENAME libpq-dev pgadmin4
# sudo --user=$USER bash "ubuntu/postgresql/create-user.sh" root admin
# bash "ubuntu/postgresql/set-psqlrc.sh"

# postman
# sudo --user=$USER bash "ubuntu/postman/install-postman.sh"

# python
# sudo --user=$USER bash "ubuntu/python/install-pyenv.sh"
# sudo --user=$USER bash "ubuntu/python/install-python.sh" pyenv 2.7.18
# sudo --user=$USER bash "ubuntu/python/install-python.sh" pyenv 3.8.2

# rar
sudo --user=$USER bash "ubuntu/rar/install-rar.sh"

# rbspy
# sudo --user=$USER bash "ubuntu/rbspy/install-rbspy.sh" 0.3.8

# readline
bash "ubuntu/readline/set-inputrc.sh"

# redis
# sudo --user=$USER bash "ubuntu/redis/install-redis.sh"

# ruby
sudo --user=$USER bash "ubuntu/ruby/install-rbenv.sh"
sudo --user=$USER bash "ubuntu/ruby/install-ruby-build.sh"
sudo --user=$USER bash "ubuntu/ruby/install-rbenv-ctags.sh"
sudo --user=$USER bash "ubuntu/ruby/install-rbenv-vars.sh"
# sudo --user=$USER bash "ubuntu/ruby/install-ruby.sh" rbenv 2.5.8 bundler
# sudo --user=$USER bash "ubuntu/ruby/install-ruby.sh" rbenv 2.6.6 rubocop "tmuxinator:1.1.3" pry-byebug
sudo --user=$USER bash "ubuntu/ruby/install-ruby.sh" rbenv 2.7.1 break rubocop "tmuxinator:1.1.5" pry-byebug
# bash "ubuntu/ruby/prepare-for-rails-development.sh" vagrant root admin

# sequeler
# sudo --user=$USER bash "ubuntu/sequeler/install-sequeler.sh"

# siege
# sudo --user=$USER bash "ubuntu/siege/install-siege.sh"

# simplescreenrecorder
# sudo --user=$USER bash "ubuntu/simplescreenrecorder/install-simplescreenrecorder.sh"

# slack
# sudo --user=$USER bash "ubuntu/slack/install-slack.sh"

# sqlite3
# sudo --user=$USER bash "ubuntu/sqlite3/install-sqlite3.sh" libsqlite3-dev

# ssh
sudo --user=$USER bash "ubuntu/ssh/install-openssh-client.sh"
sudo --user=$USER bash "ubuntu/ssh/install-openssh-server.sh"
sudo --user=$USER bash "ubuntu/ssh/change-sshd_config.sh" 2222 no
bash "ubuntu/ssh/set-authorized_keys.sh"

# sublimetext
# sudo --user=$USER bash "ubuntu/sublimetext/install-sublimetext.sh"

# telegram
# sudo --user=$USER bash "ubuntu/telegram/install-telegram.sh"

# the_silver_searcher
sudo --user=$USER bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tig
# sudo --user=$USER bash "ubuntu/tig/install-tig.sh" 2.5.1

# tmate
# sudo --user=$USER bash "ubuntu/tmate/install-tmate.sh"

# tmux
sudo --user=$USER bash "ubuntu/tmux/install-tmux.sh" 3.1
bash "ubuntu/tmux/install-dottmux.sh"

# tor
# sudo --user=$USER bash "ubuntu/tor/install-tor.sh"

# tree
sudo --user=$USER bash "ubuntu/tree/install-tree.sh"

# vagrant
# sudo --user=$USER bash "ubuntu/vagrant/install-vagrant.sh" 2.2.7 vagrant-disksize

# viber
# sudo --user=$USER bash "ubuntu/viber/install-viber.sh"

# vim
sudo --user=$USER bash "ubuntu/vim/install-vim.sh"
bash "ubuntu/vim/install-dotvim.sh"
bash "ubuntu/vim/set-vim-as-default-editor.sh"

# virtualbox
# TODO Fix for focal version: https://www.virtualbox.org/wiki/Linux_Downloads
# sudo --user=$USER bash "ubuntu/virtualbox/install-virtualbox.sh" 6.1.6 6.1_6.1.6-137129 $UBUNTU_RELEASE_CODENAME

# vscode
# sudo --user=$USER bash "ubuntu/vscode/install-vscode.sh"

# wkhtmltopdf
# TODO Fix for focal version: https://github.com/wkhtmltopdf/wkhtmltopdf/releases
sudo --user=$USER bash "ubuntu/wkhtmltopdf/install-wkhtmltopdf.sh" 0.12.5 $UBUNTU_RELEASE_CODENAME

# xclip
sudo --user=$USER bash "ubuntu/xclip/install-xclip.sh"
bash "ubuntu/xclip/add-xclip-shorthands.sh"

# xterm
sudo --user=$USER bash "ubuntu/xterm/install-xterm.sh"
bash "ubuntu/xterm/install-dotX.sh"

# zoom
# sudo --user=$USER bash "ubuntu/zoom/install-zoom.sh"

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://gitlab.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
