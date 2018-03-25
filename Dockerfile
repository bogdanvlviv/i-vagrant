FROM ubuntu:16.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y sudo

COPY . /tmp/i-vagrant
WORKDIR /tmp/i-vagrant

# upgrade
RUN sudo bash "ubuntu/upgrade/make-upgrade_packages.sh"

# bashrc
RUN bash "ubuntu/bashrc/set-lc_all-variable.sh"
RUN bash "ubuntu/bashrc/set-term-variable.sh"

# cmus
# RUN sudo bash "ubuntu/cmus/install-cmus.sh"

# curl
RUN sudo bash "ubuntu/curl/install-curl.sh"

# docker
# RUN sudo bash "ubuntu/docker/install-docker.sh" xenial
# RUN sudo bash "ubuntu/docker/install-docker-compose.sh" 1.20.1

# elasticsearch
# RUN sudo bash "ubuntu/elasticsearch/install-elasticsearch.sh" 6.2.3

# exuberant-ctags
RUN sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

# ffmpeg
RUN sudo bash "ubuntu/ffmpeg/install-ffmpeg.sh"

# firefox
RUN sudo bash "ubuntu/firefox/install-firefox.sh"
RUN sudo bash "ubuntu/firefox/install-geckodriver.sh" 0.20.0

# flatpak
# RUN sudo bash "ubuntu/flatpak/install-flatpak.sh"

# fzf
RUN bash "ubuntu/fzf/install-fzf.sh"
RUN bash "ubuntu/fzf/set-fzf_default_command.sh"

# gimp
# RUN sudo bash "ubuntu/gimp/install-gimp.sh"

# git
RUN sudo bash "ubuntu/git/install-git.sh"

# google-chrome
# RUN sudo bash "ubuntu/google-chrome/install-google-chrome.sh"
# RUN sudo bash "ubuntu/google-chrome/install-chromedriver.sh" 2.37

# graphviz
# RUN sudo bash "ubuntu/graphviz/install-graphviz.sh"

# heroku
# RUN sudo bash "ubuntu/heroku/install-heroku-cli.sh"

# htop
RUN sudo bash "ubuntu/htop/install-htop.sh"

# imagemagick
# RUN sudo bash "ubuntu/imagemagick/install-imagemagick.sh"

# java
# RUN sudo bash "ubuntu/java/install-java.sh" 8

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
# RUN sudo bash "ubuntu/mongodb/install-mongodb.sh" 3.6 xenial

# mupdf
# RUN sudo bash "ubuntu/mupdf/install-mupdf.sh"

# mosh
# RUN sudo bash "ubuntu/mosh/install-mosh.sh"

# mysql
# RUN sudo bash "ubuntu/mysql/install-mysql.sh" admin libmysqlclient-dev
# RUN sudo bash "ubuntu/mysql/install-mariadb.sh" 10.2 xenial admin libmysqlclient-dev

# network-manager
RUN sudo bash "ubuntu/network-manager/install-network-manager.sh"

# nginx
RUN sudo bash "ubuntu/nginx/install-nginx.sh"

# ngrok
RUN sudo bash "ubuntu/ngrok/install-ngrok.sh"

# nmap
RUN sudo bash "ubuntu/nmap/install-nmap.sh"

# nodejs
# RUN bash "ubuntu/nodejs/install-nvm.sh" 0.33.8
# RUN bash "ubuntu/nodejs/install-nodejs.sh" 9.9.0
# RUN sudo bash "ubuntu/nodejs/install-yarn.sh"
# RUN bash "ubuntu/nodejs/install-eslint.sh"
# RUN bash "ubuntu/nodejs/install-stylelint.sh"

# overmind
# RUN sudo bash "ubuntu/overmind/install-overmind.sh" 1.1.1

# phantomjs
# RUN sudo bash "ubuntu/phantomjs/install-phantomjs.sh"

# poppler
# RUN sudo bash "ubuntu/poppler/install-poppler.sh"

# postgresql
# RUN sudo bash "ubuntu/postgresql/install-postgresql.sh" 10 xenial libpq-dev
# RUN sudo bash "ubuntu/postgresql/create-user.sh" root admin
# RUN bash "ubuntu/postgresql/set-psqlrc.sh"

# python
# RUN sudo bash "ubuntu/python/install-pyenv.sh"
# RUN sudo bash "ubuntu/python/install-python.sh" pyenv 2.7.14

# rar
# RUN sudo bash "ubuntu/rar/install-rar.sh"

# readline
RUN bash "ubuntu/readline/set-inputrc.sh"

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
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.2.9 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.3.6 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.4.3 bundler
# RUN sudo bash "ubuntu/ruby/install-ruby.sh" rbenv 2.5.0 bundler jekyll rails rubocop tmuxinator

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
RUN sudo bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"

# tmux
RUN sudo bash "ubuntu/tmux/install-tmux.sh"
RUN bash "ubuntu/tmux/install-dottmux.sh"

# tor
# RUN sudo bash "ubuntu/tor/install-tor.sh"

# tree
# RUN sudo bash "ubuntu/tree/install-tree.sh"

# vagrant
# RUN sudo bash "ubuntu/vagrant/install-vagrant.sh" 2.0.3

# vim
RUN sudo bash "ubuntu/vim/install-vim.sh"
RUN bash "ubuntu/vim/install-dotvim.sh"
RUN bash "ubuntu/vim/set-vim-as-default-editor.sh"

# virtualbox
# RUN sudo bash "ubuntu/virtualbox/install-virtualbox.sh" 5.2.8 5.2_5.2.8-121009 xenial

# xclip
RUN sudo bash "ubuntu/xclip/install-xclip.sh"

# xterm
# RUN sudo bash "ubuntu/xterm/install-xterm.sh"
# RUN bash "ubuntu/xterm/install-dotX.sh"

RUN echo "i-vagrant: https://github.com/bogdanvlviv/i-vagrant"
