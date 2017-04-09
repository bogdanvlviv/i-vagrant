FROM ubuntu:16.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sudo

COPY . /tmp/i-vagrant
WORKDIR /tmp/i-vagrant

ENV RUN_APT_GET_UPDATE_BEFORE "no"

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

# elasticsearch
# RUN sudo bash "ubuntu/elasticsearch/install-elasticsearch.sh" 5.3.0

# exuberant-ctags
RUN sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"

# fzf
RUN bash "ubuntu/fzf/install-fzf.sh"
RUN bash "ubuntu/fzf/set-fzf_default_command.sh"

# git
RUN sudo bash "ubuntu/git/install-git.sh"

# graphviz
# RUN sudo bash "ubuntu/graphviz/install-graphviz.sh"

# htop
RUN sudo bash "ubuntu/htop/install-htop.sh"

# imagemagick
# RUN sudo bash "ubuntu/imagemagick/install-imagemagick.sh"

# java
# RUN sudo bash "ubuntu/java/install-java.sh" 7
# RUN sudo bash "ubuntu/java/install-java.sh" 8
# RUN sudo bash "ubuntu/java/install-java.sh" 9

# letsencrypt
# RUN sudo bash "ubuntu/letsencrypt/install-letsencrypt.sh"

# mc
# RUN sudo bash "ubuntu/mc/install-mc.sh"

# mongodb
# RUN sudo bash "ubuntu/mongodb/install-mongodb.sh" 3.4 xenial

# mosh
# RUN sudo bash "ubuntu/mosh/install-mosh.sh"

# mysql
# RUN sudo bash "ubuntu/mysql/install-mysql.sh" admin libmysqlclient-dev

# network-manager
# RUN sudo bash "ubuntu/network-manager/install-network-manager.sh"

# nmap
# RUN sudo bash "ubuntu/nmap/install-nmap.sh"

# nodejs
# RUN bash "ubuntu/nodejs/install-nvm.sh" 0.33.1
# RUN bash "ubuntu/nodejs/install-nodejs.sh" 5.12.0
# RUN bash "ubuntu/nodejs/install-nodejs.sh" 6.10.1
# RUN bash "ubuntu/nodejs/install-nodejs.sh" 7.7.4
# RUN sudo bash "ubuntu/nodejs/install-yarn.sh"
# RUN bash "ubuntu/nodejs/install-eslint.sh"

# phantomjs
# RUN sudo bash "ubuntu/phantomjs/install-phantomjs.sh"

# postgresql
# RUN sudo bash "ubuntu/postgresql/install-postgresql.sh" 9.6 xenial
# RUN sudo bash "ubuntu/postgresql/create-user.sh" root admin

# readline
RUN bash "ubuntu/readline/set-inputrc.sh"

# redis
# RUN sudo bash "ubuntu/redis/install-redis.sh"

# ruby
# RUN bash "ubuntu/ruby/install-rvm.sh" stable
# RUN bash "ubuntu/ruby/install-ruby.sh" 1.9.3 bundler
# RUN bash "ubuntu/ruby/install-ruby.sh" 2.0.0 bundler
# RUN bash "ubuntu/ruby/install-ruby.sh" 2.1.9 bundler
# RUN bash "ubuntu/ruby/install-ruby.sh" 2.2.6 bundler
# RUN bash "ubuntu/ruby/install-ruby.sh" 2.3.3 bundler
# RUN bash "ubuntu/ruby/install-ruby.sh" 2.4.1 bundler jekyll rails rubocop tmuxinator

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
# RUN sudo bash "ubuntu/vagrant/install-vagrant.sh" 1.9.3

# vim
RUN sudo bash "ubuntu/vim/install-vim.sh"
RUN bash "ubuntu/vim/install-dotvim.sh"
RUN bash "ubuntu/vim/set-vim-as-default-editor.sh"

# xclip
RUN sudo bash "ubuntu/xclip/install-xclip.sh"

# xterm
# RUN sudo bash "ubuntu/xterm/install-xterm.sh"
# RUN bash "ubuntu/xterm/install-dotX.sh"

RUN echo "i-vagrant: https://github.com/bogdanvlviv/i-vagrant"
