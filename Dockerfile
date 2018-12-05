FROM ubuntu:18.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y sudo

COPY . /tmp/i-vagrant
WORKDIR /tmp/i-vagrant

# upgrade
# RUN sudo bash "ubuntu/upgrade/make-upgrade_packages.sh"

# bashrc
# RUN bash "ubuntu/bashrc/set-lc_all-variable.sh"
# RUN bash "ubuntu/bashrc/set-term-variable.sh"

# android_studio
# RUN sudo bash "ubuntu/android_studio/install-android_studio.sh"

# cmus
# RUN sudo bash "ubuntu/cmus/install-cmus.sh"

# curl
# RUN sudo bash "ubuntu/curl/install-curl.sh"

# docker
# RUN sudo bash "ubuntu/docker/install-docker.sh" bionic
# RUN sudo bash "ubuntu/docker/install-docker-compose.sh" 1.23.1

# elasticsearch
# RUN sudo bash "ubuntu/elasticsearch/install-elasticsearch.sh" 6.5.0

# exuberant-ctags
# RUN sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

# ffmpeg
# RUN sudo bash "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
# RUN sudo bash "ubuntu/firefox/install-firefox.sh"
# RUN sudo bash "ubuntu/firefox/install-geckodriver.sh" 0.23.0

# flatpak
# RUN sudo bash "ubuntu/flatpak/install-flatpak.sh"

# fzf
# RUN bash "ubuntu/fzf/install-fzf.sh"
# RUN bash "ubuntu/fzf/set-fzf_default_command.sh"

# gimp
# RUN sudo bash "ubuntu/gimp/install-gimp.sh"

# git
# RUN sudo bash "ubuntu/git/install-git.sh"
# RUN sudo bash "ubuntu/git/install-diff-highlight.sh"

# go
# RUN sudo bash "ubuntu/go/install-go.sh" 1.11.2
# RUN bash "ubuntu/go/set-go-bin-to-path-variable.sh"

# google-chrome
# RUN sudo bash "ubuntu/google-chrome/install-google-chrome.sh"
# RUN sudo bash "ubuntu/google-chrome/install-chromedriver.sh" 2.43

# graphviz
# RUN sudo bash "ubuntu/graphviz/install-graphviz.sh"

# heroku
# RUN sudo bash "ubuntu/heroku/install-heroku-cli.sh"

# htop
# RUN sudo bash "ubuntu/htop/install-htop.sh"

# imagemagick
# RUN sudo bash "ubuntu/imagemagick/install-imagemagick.sh"

# java
# RUN sudo bash "ubuntu/java/install-java.sh" 11
# RUN sudo bash "ubuntu/java/install-oracle-java.sh" 8

# jq
# RUN sudo bash "ubuntu/jq/install-jq.sh"

# kubernetes
# sudo bash "ubuntu/kubernetes/install-kubectl.sh"
# sudo bash "ubuntu/kubernetes/install-minikube.sh"

# letsencrypt
# RUN sudo bash "ubuntu/letsencrypt/install-letsencrypt.sh"

# libxml2
# RUN sudo bash "ubuntu/libxml2/install-libxml2.sh" libxml2-dev

# mc
# RUN sudo bash "ubuntu/mc/install-mc.sh"

# memcached
# RUN sudo bash "ubuntu/memcached/install-memcached.sh"

# mongodb
# RUN sudo bash "ubuntu/mongodb/install-mongodb.sh" 3.6 bionic

# mupdf
# RUN sudo bash "ubuntu/mupdf/install-mupdf.sh"

# mosh
# RUN sudo bash "ubuntu/mosh/install-mosh.sh"

# mysql
# RUN sudo bash "ubuntu/mysql/install-mysql.sh" admin libmysqlclient-dev
# RUN sudo bash "ubuntu/mysql/install-mariadb.sh" 10.3 bionic admin libmysqlclient-dev

# network-manager
# RUN sudo bash "ubuntu/network-manager/install-network-manager.sh"

# nginx
# RUN sudo bash "ubuntu/nginx/install-nginx.sh"

# ngrok
# RUN sudo bash "ubuntu/ngrok/install-ngrok.sh"

# nmap
# RUN sudo bash "ubuntu/nmap/install-nmap.sh"

# nodejs
# RUN bash "ubuntu/nodejs/install-nvm.sh" 0.33.11
# RUN bash "ubuntu/nodejs/install-nodejs.sh" 10.13.0
# RUN sudo bash "ubuntu/nodejs/install-yarn.sh"
# RUN bash "ubuntu/nodejs/install-eslint.sh"
# RUN bash "ubuntu/nodejs/install-stylelint.sh"

# overmind
# RUN sudo bash "ubuntu/overmind/install-overmind.sh" 1.2.1

# phantomjs
# RUN sudo bash "ubuntu/phantomjs/install-phantomjs.sh"

# poppler
# RUN sudo bash "ubuntu/poppler/install-poppler.sh"

# postgresql
# RUN sudo bash "ubuntu/postgresql/install-postgresql.sh" 11 bionic libpq-dev pgadmin4
# RUN sudo bash "ubuntu/postgresql/create-user.sh" root admin
# RUN bash "ubuntu/postgresql/set-psqlrc.sh"

# python
# RUN sudo bash "ubuntu/python/install-pyenv.sh"
# RUN sudo bash "ubuntu/python/install-python.sh" pyenv 2.7.15
# RUN sudo bash "ubuntu/python/install-python.sh" pyenv 3.7.1

# rar
# RUN sudo bash "ubuntu/rar/install-rar.sh"

# rbspy
# RUN sudo bash "ubuntu/rbspy/install-rbspy.sh" 0.3.3

# readline
# RUN bash "ubuntu/readline/set-inputrc.sh"

# redis
# RUN sudo bash "ubuntu/redis/install-redis.sh"

# ruby
# RUN sudo bash "ubuntu/ruby/install-rbenv.sh"
# RUN sudo bash "ubuntu/ruby/install-ruby-build.sh"
# RUN sudo bash "ubuntu/ruby/install-rbenv-ctags.sh"
# RUN sudo bash "ubuntu/ruby/install-rbenv-vars.sh"
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 1.9.3-p551 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.0.0-p648 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.1.10 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.2.10 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.3.8 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.4.5 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.5.3 jekyll rails rubocop tmuxinator
# RUN bash "ubuntu/ruby/prepare-for-rails-development.sh" vagrant root admin

# siege
# RUN sudo bash "ubuntu/siege/install-siege.sh"

# simplescreenrecorder
# RUN sudo bash "ubuntu/simplescreenrecorder/install-simplescreenrecorder.sh"

# sqlite3
# RUN sudo bash "ubuntu/sqlite3/install-sqlite3.sh" libsqlite3-dev

# ssh
# RUN sudo bash "ubuntu/ssh/install-openssh-client.sh"
# RUN sudo bash "ubuntu/ssh/install-openssh-server.sh"
# RUN sudo bash "ubuntu/ssh/change-sshd_config.sh" 2222 no
# RUN bash "ubuntu/ssh/set-authorized_keys.sh"

# the_silver_searcher
# RUN sudo bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tmux
# RUN sudo bash "ubuntu/tmux/install-tmux.sh" 2.8
# RUN bash "ubuntu/tmux/install-dottmux.sh"

# tor
# RUN sudo bash "ubuntu/tor/install-tor.sh"

# tree
# RUN sudo bash "ubuntu/tree/install-tree.sh"

# vagrant
# RUN sudo bash "ubuntu/vagrant/install-vagrant.sh" 2.2.1

# vim
# RUN sudo bash "ubuntu/vim/install-vim.sh"
# RUN bash "ubuntu/vim/install-dotvim.sh"
# RUN bash "ubuntu/vim/set-vim-as-default-editor.sh"

# virtualbox
# RUN sudo bash "ubuntu/virtualbox/install-virtualbox.sh" 5.2.22 5.2_5.2.22-126460 bionic

# vscode
# RUN sudo bash "ubuntu/vscode/install-vscode.sh"

# wkhtmltopdf
# RUN sudo bash "ubuntu/wkhtmltopdf/install-wkhtmltopdf.sh" 0.12.4

# xclip
# RUN sudo bash "ubuntu/xclip/install-xclip.sh"
# RUN bash "ubuntu/xclip/add-xclip-shorthands.sh"

# xterm
# RUN sudo bash "ubuntu/xterm/install-xterm.sh"
# RUN bash "ubuntu/xterm/install-dotX.sh"

# zoom
# RUN sudo bash "ubuntu/zoom/install-zoom.sh"

# RUN echo "i-vagrant: https://github.com/bogdanvlviv/i-vagrant"
