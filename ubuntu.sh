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

UBUNTU_RELEASE_CODENAME="jammy"

# upgrade
bash "ubuntu/upgrade/make-upgrade_packages.sh"

# bashrc
bash "ubuntu/bashrc/set-lc_all-variable.sh"
bash "ubuntu/bashrc/set-term-variable.sh"

# android_studio
# bash "ubuntu/android_studio/install-android_studio.sh"

# asdf
bash "ubuntu/asdf/install-asdf.sh" v0.10.2

# atom
# bash "ubuntu/atom/install-atom.sh"

# aws
# bash "ubuntu/aws/install-aws-cli.sh"

# cmus
bash "ubuntu/cmus/install-cmus.sh"

# curl
bash "ubuntu/curl/install-curl.sh"

# docker
bash "ubuntu/docker/install-docker.sh" $UBUNTU_RELEASE_CODENAME
bash "ubuntu/docker/add-user-to-docker-group.sh"
bash "ubuntu/docker/install-docker-compose.sh" v2.11.0

# drawing
# bash "ubuntu/drawing/install-drawing.sh"

# exuberant-ctags
bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
bash "ubuntu/exuberant-ctags/set-ctags.sh"

# ffmpeg
bash "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
bash "ubuntu/firefox/install-firefox.sh"
bash "ubuntu/firefox/install-geckodriver.sh" v0.31.0

# flatpak
bash "ubuntu/flatpak/install-flatpak.sh"

# fzf
bash "ubuntu/fzf/install-fzf.sh"
bash "ubuntu/fzf/set-fzf_default_command.sh"

# gimp
bash "ubuntu/gimp/install-gimp.sh"

# git
bash "ubuntu/git/install-git.sh"
bash "ubuntu/git/install-diff-highlight.sh"

# go
bash "ubuntu/go/asdf-install-go.sh" 1.19

# google-chrome
bash "ubuntu/google-chrome/install-google-chrome.sh"
bash "ubuntu/google-chrome/install-chromedriver.sh" 106.0.5249.21

# graphiql
# bash "ubuntu/graphiql/install-graphiql.sh" 0.7.2

# graphviz
bash "ubuntu/graphviz/install-graphviz.sh"

# heroku
# bash "ubuntu/heroku/install-heroku-cli.sh"

# htop
bash "ubuntu/htop/install-htop.sh"

# imagemagick
bash "ubuntu/imagemagick/install-imagemagick.sh"
bash "ubuntu/imagemagick/add-imagemagick-shorthands.sh"

# java
# bash "ubuntu/java/asdf-install-java.sh" adoptopenjdk-jre-18.0.2+101

# jq
bash "ubuntu/jq/install-jq.sh"

# kubernetes
# bash "ubuntu/kubernetes/install-kubectl.sh"
# bash "ubuntu/kubernetes/install-minikube.sh"

# latex
# bash "ubuntu/latex/install-latex.sh" texlive-lang-cyrillic

# letsencrypt
# bash "ubuntu/letsencrypt/install-letsencrypt.sh"

# libvips
bash "ubuntu/libvips/install-libvips.sh"

# libxml2
bash "ubuntu/libxml2/install-libxml2.sh" libxml2-dev

# mc
bash "ubuntu/mc/install-mc.sh"

# memcached
bash "ubuntu/memcached/install-memcached.sh"

# mkcert
bash "ubuntu/mkcert/install-mkcert.sh" v1.4.4

# mosh
bash "ubuntu/mosh/install-mosh.sh"

# mupdf
bash "ubuntu/mupdf/install-mupdf.sh"

# mysql
# bash "ubuntu/mysql/asdf-install-mysql.sh" 5.7.34

# network-manager
bash "ubuntu/network-manager/install-network-manager.sh"

# nginx
bash "ubuntu/nginx/install-nginx.sh" $UBUNTU_RELEASE_CODENAME

# ngrok
bash "ubuntu/ngrok/install-ngrok.sh"

# nmap
bash "ubuntu/nmap/install-nmap.sh"

# nodejs
bash "ubuntu/nodejs/asdf-install-nodejs.sh" 16.17.0
bash "ubuntu/nodejs/asdf-install-yarn.sh" 1.22.19
bash "ubuntu/nodejs/install-eslint.sh"
bash "ubuntu/nodejs/install-stylelint.sh"

# openvpn
bash "ubuntu/openvpn/install-openvpn.sh"
bash "ubuntu/openvpn/change-openvpn_config.sh"

# phantomjs
# bash "ubuntu/phantomjs/install-phantomjs.sh"

# poppler
bash "ubuntu/poppler/install-poppler.sh"

# postgresql
bash "ubuntu/postgresql/asdf-install-postgresql.sh" 14.5
bash "ubuntu/postgresql/set-psqlrc.sh"

# postman
# bash "ubuntu/postman/install-postman.sh"

# python
# bash "ubuntu/python/asdf-install-python.sh" 3.10.7

# rar
bash "ubuntu/rar/install-rar.sh"

# rbspy
# bash "ubuntu/rbspy/install-rbspy.sh" v0.3.8

# readline
bash "ubuntu/readline/set-inputrc.sh"

# redis
bash "ubuntu/redis/asdf-install-redis.sh" 7.0.4

# ruby
bash "ubuntu/ruby/asdf-install-ruby.sh" 3.1.2 break rubocop "tmuxinator:3.0.5" debug pry-byebug
bash "ubuntu/ruby/set-rspec.sh"

# sequeler
# bash "ubuntu/sequeler/install-sequeler.sh"

# siege
# bash "ubuntu/siege/install-siege.sh"

# simplescreenrecorder
bash "ubuntu/simplescreenrecorder/install-simplescreenrecorder.sh"

# slack
bash "ubuntu/slack/install-slack.sh"

# sqlite
bash "ubuntu/sqlite/asdf-install-sqlite.sh" 3.39.3

# ssh
bash "ubuntu/ssh/install-openssh-client.sh"
bash "ubuntu/ssh/install-openssh-server.sh"
bash "ubuntu/ssh/change-sshd_config.sh" 4242 no
bash "ubuntu/ssh/set-authorized_keys.sh"

# sublimetext
# bash "ubuntu/sublimetext/install-sublimetext.sh"

# telegram
# bash "ubuntu/telegram/install-telegram.sh"

# teleport
bash "ubuntu/teleport/install-teleport.sh" $UBUNTU_RELEASE_CODENAME

# the_silver_searcher
bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tig
# bash "ubuntu/tig/install-tig.sh" 2.5.7

# tmate
bash "ubuntu/tmate/install-tmate.sh"

# tmux
bash "ubuntu/tmux/install-tmux.sh" 3.3a
bash "ubuntu/tmux/install-dottmux.sh"

# tor
# bash "ubuntu/tor/install-tor.sh"

# tree
bash "ubuntu/tree/install-tree.sh"

# vagrant
# bash "ubuntu/vagrant/install-vagrant.sh" 2.3.0 vagrant-disksize

# viber
# bash "ubuntu/viber/install-viber.sh"

# vim
bash "ubuntu/vim/install-vim.sh"
bash "ubuntu/vim/install-dotvim.sh"
bash "ubuntu/vim/set-vim-as-default-editor.sh"

# virtualbox
# bash "ubuntu/virtualbox/install-virtualbox.sh" 6.1.38 6.1_6.1.38-153438 $UBUNTU_RELEASE_CODENAME

# vscode
# bash "ubuntu/vscode/install-vscode.sh"

# wkhtmltopdf
# bash "ubuntu/wkhtmltopdf/install-wkhtmltopdf.sh" 0.12.6 focal
# bash "ubuntu/wkhtmltopdf/install-wkhtmltopdf.sh" 0.12.6 $UBUNTU_RELEASE_CODENAME

# xclip
bash "ubuntu/xclip/install-xclip.sh"
bash "ubuntu/xclip/add-xclip-shorthands.sh"

# xournal
bash "ubuntu/xournal/install-xournal.sh"

# xterm
bash "ubuntu/xterm/install-xterm.sh"
bash "ubuntu/xterm/install-dotX.sh"

# yubikey-manager
bash "ubuntu/yubikey-manager/install-yubikey-manager.sh"

# zoom
bash "ubuntu/zoom/install-zoom.sh"

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://gitlab.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
