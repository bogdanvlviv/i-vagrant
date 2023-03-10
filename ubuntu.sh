#!/usr/bin/env bash

sudo bash -c ""

echo "Are you ready to start?"
echo -n "Type 'yes' or the operation will be aborted: "
read i_vagrant_ready_to_start_answer
if [[ "$i_vagrant_ready_to_start_answer" != "yes" ]]; then
  echo ""
  echo "Aborted!"
  echo ""
  return
fi

UBUNTU_RELEASE_CODENAME="jammy"

# upgrade
source "ubuntu/upgrade/make-upgrade_packages.sh"
# source "ubuntu/upgrade/make-upgrade_snap-store.sh"

# bashrc
source "ubuntu/bashrc/set-lc_all-variable.sh"
source "ubuntu/bashrc/set-term-variable.sh"

# android_studio
# source "ubuntu/android_studio/install-android_studio.sh"

# asdf
source "ubuntu/asdf/install-asdf.sh" v0.10.2

# atom
# source "ubuntu/atom/install-atom.sh"

# aws
# source "ubuntu/aws/install-aws-cli.sh"

# cmus
source "ubuntu/cmus/install-cmus.sh"

# curl
source "ubuntu/curl/install-curl.sh"

# docker
source "ubuntu/docker/install-docker.sh" $UBUNTU_RELEASE_CODENAME
source "ubuntu/docker/add-user-to-docker-group.sh"
source "ubuntu/docker/install-docker-compose.sh" v2.11.0

# drawing
# source "ubuntu/drawing/install-drawing.sh"

# exuberant-ctags
source "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
source "ubuntu/exuberant-ctags/set-ctags.sh"

# ffmpeg
source "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
source "ubuntu/firefox/install-firefox.sh"
source "ubuntu/firefox/install-geckodriver.sh" v0.31.0

# flatpak
source "ubuntu/flatpak/install-flatpak.sh"

# fzf
source "ubuntu/fzf/install-fzf.sh"
source "ubuntu/fzf/set-fzf_default_command.sh"

# gimp
source "ubuntu/gimp/install-gimp.sh"

# git
source "ubuntu/git/install-git.sh"
source "ubuntu/git/install-diff-highlight.sh"

# go
source "ubuntu/go/asdf-install-go.sh" 1.19

# google-chrome
source "ubuntu/google-chrome/install-google-chrome.sh"
source "ubuntu/google-chrome/install-chromedriver.sh" 111.0.5563.64

# graphiql
# source "ubuntu/graphiql/install-graphiql.sh" 0.7.2

# graphviz
source "ubuntu/graphviz/install-graphviz.sh"

# heroku
# source "ubuntu/heroku/install-heroku-cli.sh"

# htop
source "ubuntu/htop/install-htop.sh"

# imagemagick
source "ubuntu/imagemagick/install-imagemagick.sh"
source "ubuntu/imagemagick/add-imagemagick-shorthands.sh"

# jq
source "ubuntu/jq/install-jq.sh"

# kdenlive
source "ubuntu/kdenlive/install-kdenlive.sh"

# kubernetes
# source "ubuntu/kubernetes/install-kubectl.sh"
# source "ubuntu/kubernetes/install-minikube.sh"

# latex
# source "ubuntu/latex/install-latex.sh" texlive-lang-cyrillic

# letsencrypt
# source "ubuntu/letsencrypt/install-letsencrypt.sh"

# libvips
source "ubuntu/libvips/install-libvips.sh"

# libxml2
source "ubuntu/libxml2/install-libxml2.sh" libxml2-dev

# mc
source "ubuntu/mc/install-mc.sh"

# memcached
source "ubuntu/memcached/install-memcached.sh"

# mkcert
source "ubuntu/mkcert/install-mkcert.sh" v1.4.4

# mosh
source "ubuntu/mosh/install-mosh.sh"

# mupdf
source "ubuntu/mupdf/install-mupdf.sh"

# mysql
# source "ubuntu/mysql/asdf-install-mysql.sh" 5.7.34

# network-manager
source "ubuntu/network-manager/install-network-manager.sh"

# nginx
source "ubuntu/nginx/install-nginx.sh" $UBUNTU_RELEASE_CODENAME

# ngrok
source "ubuntu/ngrok/install-ngrok.sh"

# nmap
source "ubuntu/nmap/install-nmap.sh"

# nodejs
source "ubuntu/nodejs/asdf-install-nodejs.sh" 16.17.0
source "ubuntu/nodejs/asdf-install-yarn.sh" 1.22.19
source "ubuntu/nodejs/install-eslint.sh"
source "ubuntu/nodejs/install-stylelint.sh"

# obs-studio
# source "ubuntu/obs-studio/install-obs-studio.sh"

# openvpn
source "ubuntu/openvpn/install-openvpn.sh"
source "ubuntu/openvpn/change-openvpn_config.sh"

# phantomjs
# source "ubuntu/phantomjs/install-phantomjs.sh"

# poppler
source "ubuntu/poppler/install-poppler.sh"

# postgresql
source "ubuntu/postgresql/asdf-install-postgresql.sh" 14.5
source "ubuntu/postgresql/set-psqlrc.sh"

# postman
# source "ubuntu/postman/install-postman.sh"

# python
source "ubuntu/python/asdf-install-python.sh" 3.10.7

# rar
source "ubuntu/rar/install-rar.sh"

# rbspy
# source "ubuntu/rbspy/install-rbspy.sh" v0.3.8

# readline
source "ubuntu/readline/set-inputrc.sh"

# redis
source "ubuntu/redis/asdf-install-redis.sh" 7.0.4

# ruby
source "ubuntu/ruby/asdf-install-ruby.sh" 3.2.0 debug rubocop "tmuxinator:3.0.5"
source "ubuntu/ruby/set-rspec.sh"

# sequeler
# source "ubuntu/sequeler/install-sequeler.sh"

# siege
# source "ubuntu/siege/install-siege.sh"

# slack
# source "ubuntu/slack/install-slack.sh"

# sqlite
source "ubuntu/sqlite/asdf-install-sqlite.sh" 3.39.3

# ssh
source "ubuntu/ssh/install-openssh-client.sh"
source "ubuntu/ssh/install-openssh-server.sh"
source "ubuntu/ssh/change-sshd_config.sh" 4242 no
source "ubuntu/ssh/set-authorized_keys.sh"

# sublimetext
# source "ubuntu/sublimetext/install-sublimetext.sh"

# telegram
# source "ubuntu/telegram/install-telegram.sh"

# teleport
source "ubuntu/teleport/install-teleport.sh" $UBUNTU_RELEASE_CODENAME

# the_silver_searcher
source "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tig
# source "ubuntu/tig/install-tig.sh" 2.5.7

# tmate
source "ubuntu/tmate/install-tmate.sh"

# tmux
source "ubuntu/tmux/install-tmux.sh" 3.3a
source "ubuntu/tmux/install-dottmux.sh"

# tor
# source "ubuntu/tor/install-tor.sh"

# tree
source "ubuntu/tree/install-tree.sh"

# vagrant
# source "ubuntu/vagrant/install-vagrant.sh" 2.3.0 vagrant-disksize

# viber
# source "ubuntu/viber/install-viber.sh"

# vim
source "ubuntu/vim/install-vim.sh"
source "ubuntu/vim/install-dotvim.sh"
source "ubuntu/vim/set-vim-as-default-editor.sh"

# virtualbox
# source "ubuntu/virtualbox/install-virtualbox.sh" 6.1.38 6.1_6.1.38-153438 $UBUNTU_RELEASE_CODENAME

# vscode
# source "ubuntu/vscode/install-vscode.sh"

# wkhtmltopdf
# source "ubuntu/wkhtmltopdf/install-wkhtmltopdf.sh" 0.12.6.1-2 $UBUNTU_RELEASE_CODENAME

# xclip
source "ubuntu/xclip/install-xclip.sh"
source "ubuntu/xclip/add-xclip-shorthands.sh"

# xournal
source "ubuntu/xournal/install-xournal.sh"

# xterm
source "ubuntu/xterm/install-xterm.sh"
source "ubuntu/xterm/install-dotX.sh"

# yubikey-manager
source "ubuntu/yubikey-manager/install-yubikey-manager.sh"

# zoom
source "ubuntu/zoom/install-zoom.sh" 5.13.5.431

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://gitlab.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
