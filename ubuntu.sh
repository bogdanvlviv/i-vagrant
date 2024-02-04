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

# asdf
source "ubuntu/asdf/install-asdf.sh" v0.14.0

# curl
source "ubuntu/curl/install-curl.sh"

# docker
source "ubuntu/docker/install-docker.sh" $UBUNTU_RELEASE_CODENAME
source "ubuntu/docker/add-user-to-docker-group.sh"
source "ubuntu/docker/install-docker-compose.sh" v2.24.5

# exuberant-ctags
source "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
source "ubuntu/exuberant-ctags/set-ctags.sh"

# ffmpeg
source "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
source "ubuntu/firefox/install-firefox.sh"
source "ubuntu/firefox/install-geckodriver.sh" v0.34.0

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
source "ubuntu/go/asdf-install-go.sh" 1.21.6

# google-chrome
source "ubuntu/google-chrome/install-google-chrome.sh"
source "ubuntu/google-chrome/install-chromedriver.sh" 121.0.6167.85

# graphviz
source "ubuntu/graphviz/install-graphviz.sh"

# htop
source "ubuntu/htop/install-htop.sh"

# imagemagick
source "ubuntu/imagemagick/install-imagemagick.sh"

# jq
source "ubuntu/jq/install-jq.sh"

# kdenlive
source "ubuntu/kdenlive/install-kdenlive.sh"

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

# mupdf
source "ubuntu/mupdf/install-mupdf.sh"

# mysql
# source "ubuntu/mysql/asdf-install-mysql.sh" 5.7.34

# network-manager
source "ubuntu/network-manager/install-network-manager.sh"

# nginx
source "ubuntu/nginx/install-nginx.sh" $UBUNTU_RELEASE_CODENAME

# nmap
source "ubuntu/nmap/install-nmap.sh"

# nodejs
source "ubuntu/nodejs/asdf-install-nodejs.sh" 20.11.0
source "ubuntu/nodejs/asdf-install-yarn.sh" 1.22.19

# obs-studio
source "ubuntu/obs-studio/install-obs-studio.sh"

# openvpn
source "ubuntu/openvpn/install-openvpn.sh"
source "ubuntu/openvpn/change-openvpn_config.sh"

# poppler
source "ubuntu/poppler/install-poppler.sh"

# postgresql
source "ubuntu/postgresql/asdf-install-postgresql.sh" 16.1
source "ubuntu/postgresql/set-psqlrc.sh"

# python
source "ubuntu/python/asdf-install-python.sh" 3.12.1

# rar
source "ubuntu/rar/install-rar.sh"

# rbspy
source "ubuntu/rbspy/install-rbspy.sh" v0.19.0

# readline
source "ubuntu/readline/set-inputrc.sh"

# redis
source "ubuntu/redis/asdf-install-redis.sh" 7.2.4

# ruby
source "ubuntu/ruby/asdf-install-ruby.sh" 3.3.0 debug rubocop "tmuxinator:3.1.0"
source "ubuntu/ruby/set-rspec.sh"

# sqlite
source "ubuntu/sqlite/asdf-install-sqlite.sh" 3.45.1

# ssh
source "ubuntu/ssh/install-openssh-client.sh"
source "ubuntu/ssh/install-openssh-server.sh"
source "ubuntu/ssh/change-sshd_config.sh" 4242 no
source "ubuntu/ssh/set-authorized_keys.sh"

# teleport
source "ubuntu/teleport/install-teleport.sh" 15.0.0

# the_silver_searcher
source "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tmux
source "ubuntu/tmux/install-tmux.sh" 3.3a
source "ubuntu/tmux/install-dottmux.sh"

# tree
source "ubuntu/tree/install-tree.sh"

# vim
source "ubuntu/vim/install-vim.sh"
source "ubuntu/vim/install-dotvim.sh"
source "ubuntu/vim/set-vim-as-default-editor.sh"

# xclip
source "ubuntu/xclip/install-xclip.sh"
source "ubuntu/xclip/add-xclip-shorthands.sh"

# xterm
source "ubuntu/xterm/install-xterm.sh"
source "ubuntu/xterm/install-dotX.sh"

# yubikey-manager
source "ubuntu/yubikey-manager/install-yubikey-manager.sh"

# zoom
source "ubuntu/zoom/install-zoom.sh" 5.17.5.2543

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://gitlab.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
