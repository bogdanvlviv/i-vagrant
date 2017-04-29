### Setting up ubuntu
To set up a development environment on ubuntu machine, need configure `ubuntu.sh` file.
After configure `ubuntu.sh` file need to run
```bash
$ source ubuntu.sh
```

#### How to configure `ubuntu.sh` file

To configure `ubuntu.sh` don't run `apt-get update` before some scripts need to set the row
```bash
export RUN_APT_GET_UPDATE_BEFORE="no"
```

##### upgrade
To configure `ubuntu.sh` file for upgrade packages need to set the row
```bash
sudo bash "ubuntu/upgrade/make-upgrade_packages.sh"
```

- [bashrc](#bashrc)
- [cmus](#cmus)
- [curl](#curl)
- [docker](#docker)
- [elasticsearch](#elasticsearch)
- [exuberant-ctags](#exuberant-ctags)
- [fzf](#fzf)
- [git](#git)
- [google-chrome](#google-chrome)
- [graphviz](#graphviz)
- [htop](#htop)
- [imagemagick](#imagemagick)
- [java](#java)
- [letsencrypt](#letsencrypt)
- [libxml2](#libxml2)
- [mc](#mc)
- [mongodb](#mongodb)
- [mosh](#mosh)
- [mysql](#mysql)
- [network-manager](#network-manager)
- [nmap](#nmap)
- [nodejs](#nodejs)
- [phantomjs](#phantomjs)
- [postgresql](#postgresql)
- [readline](#readline)
- [redis](#redis)
- [ruby](#ruby)
- [sqlite3](#sqlite3)
- [ssh](#ssh)
- [the_silver_searcher](#the_silver_searcher)
- [tmux](#tmux)
- [tor](#tor)
- [tree](#tree)
- [vagrant](#vagrant)
- [vim](#vim)
- [xclip](#xclip)
- [xterm](#xterm)

##### bashrc
To configure `ubuntu.sh` file for setting `LC_ALL` environment variable need to set the row
```bash
bash "ubuntu/bashrc/set-lc_all-variable.sh"
```
To configure `ubuntu.sh` file for setting `TERM` environment variable need to set the row
```bash
bash "ubuntu/bashrc/set-term-variable.sh"
```

##### cmus
To configure `ubuntu.sh` file for installing `cmus` need to set the row
```bash
sudo bash "ubuntu/cmus/install-cmus.sh"
```

##### curl
To configure `ubuntu.sh` file for installing `curl` need to set the row
```bash
sudo bash "ubuntu/curl/install-curl.sh"
```

##### docker
To configure `ubuntu.sh` file for installing `docker` need to set the row
```bash
sudo bash "ubuntu/docker/install-docker.sh" UBUNTU_RELEASE_CODENAME
```

###### Required arguments:
`UBUNTU_RELEASE_CODENAME` - example values: `trusty`, `xenial`, ...

##### elasticsearch
To configure `ubuntu.sh` file for installing `elasticsearch` need to set the row
```bash
sudo bash "ubuntu/elasticsearch/install-elasticsearch.sh" ELASTICSEARCH_VERSION
```

###### Required arguments:
`ELASTICSEARCH_VERSION` - example values: `1.7.6` or `5.3.0`, ...

##### exuberant-ctags
To configure `ubuntu.sh` file for installing `exuberant-ctags` need to set the row
```bash
sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
```

##### fzf
To configure `ubuntu.sh` file for installing `fzf` need to set the row
```bash
bash "ubuntu/fzf/install-fzf.sh"
```
To configure `ubuntu.sh` file for setting `FZF_DEFAULT_COMMAND` need to set the row
```bash
bash "ubuntu/fzf/set-fzf_default_command.sh"
```

##### git
To configure `ubuntu.sh` file for installing `git` need to set the row
```bash
sudo bash "ubuntu/git/install-git.sh"
```

##### google-chrome
To configure `ubuntu.sh` file for installing `google-chrome` need to set the row
```bash
sudo bash "ubuntu/google-chrome/install-google-chrome.sh"
```

##### graphviz
To configure `ubuntu.sh` file for installing `graphviz` need to set the row
```bash
sudo bash "ubuntu/graphviz/install-graphviz.sh"
```

##### htop
To configure `ubuntu.sh` file for installing `htop` need to set the row
```bash
sudo bash "ubuntu/htop/install-htop.sh"
```

##### imagemagick
To configure `ubuntu.sh` file for installing `imagemagick` need to set the row
```bash
sudo bash "ubuntu/imagemagick/install-imagemagick.sh"
```

##### java
To configure `ubuntu.sh` file for installing `java` need to set the row
```bash
sudo bash "ubuntu/java/install-java.sh" JAVA_VERSION
```

###### Required arguments:
`JAVA_VERSION` - example values: `7` or `8`, ...

##### letsencrypt
To configure `ubuntu.sh` file for installing `letsencrypt` need to set the row
```bash
sudo bash "ubuntu/letsencrypt/install-letsencrypt.sh"
```

##### libxml2
To configure `ubuntu.sh` file for installing `libxml2` need to set the row
```bash
sudo bash "ubuntu/libxml2/install-libxml2.sh" ADDITIONAL_LIBRARIES
```

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libxml2-dev`, ...

##### mc
To configure `ubuntu.sh` file for installing `mc` need to set the row
```bash
sudo bash "ubuntu/mc/install-mc.sh"
```

##### mongodb
To configure `ubuntu.sh` file for installing `mongodb` need to set the row
```bash
sudo bash "ubuntu/mongodb/install-mongodb.sh" MONGODB_VERSION UBUNTU_RELEASE_CODENAME
```

###### Required arguments:
`MONGODB_VERSION` - example values: `3.0` or `3.2`, ...

`UBUNTU_RELEASE_CODENAME` - example values: `trusty`, `xenial`, ...

##### mosh
To configure `ubuntu.sh` file for installing `mosh` need to set the row
```bash
sudo bash "ubuntu/mosh/install-mosh.sh"
```

##### mysql
To configure `ubuntu.sh` file for installing `mysql` need to set the row
```bash
sudo bash "ubuntu/mysql/install-mysql.sh" MYSQL_USER_ROOT_PASSWORD ADDITIONAL_LIBRARIES
```

###### Required arguments:
`MYSQL_USER_ROOT_PASSWORD` - example values: `password` or `password1`, ...

During installing MySQL create `mysql user` named `root`, need to set password for him.

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libmysqlclient-dev` or `libmysqlclient-dev mysql-testsuite`, ...

##### network-manager
To configure `ubuntu.sh` file for installing `network-manager` need to set the row
```bash
sudo bash "ubuntu/network-manager/install-network-manager.sh"
```

##### nmap
To configure `ubuntu.sh` file for installing `nmap` need to set the row
```bash
sudo bash "ubuntu/nmap/install-nmap.sh"
```

##### nodejs
To configure `ubuntu.sh` file for installing `nvm` need to set the row
```bash
bash "ubuntu/nodejs/install-nvm.sh" NVM_VERSION
```
To configure `ubuntu.sh` file for installing `nodejs` after installation `nvm` need to set the row
```bash
bash "ubuntu/nodejs/install-nodejs.sh" NODEJS_VERSION
```
To configure `ubuntu.sh` file for installing `yarn` need to set the row
```bash
sudo bash "ubuntu/nodejs/install-yarn.sh"
```
To configure `ubuntu.sh` file for installing `eslint` need to set the row
```bash
bash "ubuntu/nodejs/install-eslint.sh"
```

###### Required arguments:
`NVM_VERSION` - example values: `0.31.6` or `0.31.7`, ...

`NODEJS_VERSION` - example values: `4.5.0` or `6.5.0`, ...

##### phantomjs
To configure `ubuntu.sh` file for installing `phantomjs` need to set the row
```bash
sudo bash "ubuntu/phantomjs/install-phantomjs.sh"
```

##### postgresql
To configure `ubuntu.sh` file for installing `postgresql` need to set the row
```bash
sudo bash "ubuntu/postgresql/install-postgresql.sh" POSTGRESQL_VERSION UBUNTU_RELEASE_CODENAME ADDITIONAL_LIBRARIES
```
To configure `ubuntu.sh` file for create `postgresql user` after installation `postgresql` need to set the row
```bash
sudo bash "ubuntu/postgresql/create-user.sh" POSTGRESQL_USER_NAME POSTGRESQL_USER_PASSWORD
```

###### Required arguments:
`POSTGRESQL_USER_NAME` - example values: `root` or `root1`, ...

`POSTGRESQL_USER_PASSWORD` - example values: `password` or `password1`, ...

`POSTGRESQL_VERSION` - example values: `9.4` or `9.5`, ...

`UBUNTU_RELEASE_CODENAME` - example values: `trusty`, `xenial`, ...

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libpq-dev` or `libpq-dev postgresql-contrib`, ...


##### readline
To configure `ubuntu.sh` file for setting `~/.inputrc` file need to set the row
```bash
bash "ubuntu/readline/set-inputrc.sh"
```

##### redis
To configure `ubuntu.sh` file for installing `redis` need to set the row
```bash
sudo bash "ubuntu/redis/install-redis.sh"
```

##### ruby
To configure `ubuntu.sh` file for installing `rvm` need to set the row
```bash
bash "ubuntu/ruby/install-rvm.sh" RVM_VERSION
```
To configure `ubuntu.sh` file for installing `ruby` after installation `rvm` need to set the row
```bash
bash "ubuntu/ruby/install-ruby.sh" RUBY_VERSION ADDITIONAL_GEMS
```
See more about installing `rvm` with sudo privileges [here](https://rvm.io/rvm/install).

###### Required arguments:
`RVM_VERSION` - example values: `stable` or `head`, ...

`RUBY_VERSION` - example values: `1.9.3` or `2.3.1`, ...

###### Optional arguments:
`ADDITIONAL_GEMS` - example values: `bundler` or `bundler rails`, ...

##### sqlite3
To configure `ubuntu.sh` file for installing `sqlite3` need to set the row
```bash
sudo bash "ubuntu/sqlite3/install-sqlite3.sh" ADDITIONAL_LIBRARIES
```

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libsqlite3-dev` or `libsqlite3-dev libsqlite3-tcl`, ...

##### ssh
To configure `ubuntu.sh` file for installing `openssh-client` need to set the row
```bash
sudo bash "ubuntu/ssh/install-openssh-client.sh"
```
To configure `ubuntu.sh` file for installing `openssh-server` need to set the row
```bash
sudo bash "ubuntu/ssh/install-openssh-server.sh"
```
To configure `ubuntu.sh` to set `change sshd_config` need to set the row
```bash
bash "ubuntu/ssh/change-sshd_config.sh", SSH_PORT PASSWORD_AUTHENTICATION
```
To configure `ubuntu.sh` to set `authorized_keys` need to set the row
```bash
bash "ubuntu/ssh/set-authorized_keys.sh"
```
NOTICE: Add your own `authorized_keys` in the `ubuntu/ssh/set-authorized_keys.sh` file!

###### Required arguments:
`SSH_PORT` - example values: `22` or `2222`, ...

`PASSWORD_AUTHENTICATION` - example values: `yes` or `no`

##### the_silver_searcher
To configure `ubuntu.sh` file for installing `the_silver_searcher` need to set the row
```bash
sudo bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"
```

##### tmux
To configure `ubuntu.sh` file for installing `tmux` need to set the row
```bash
sudo bash "ubuntu/tmux/install-tmux.sh"
```
To configure `ubuntu.sh` file for installing [dottmux](https://github.com/bogdanvlviv/dottmux) need to set the row
```bash
bash "ubuntu/tmux/install-dottmux.sh"
```

##### tor
To configure `ubuntu.sh` file for installing `tor` need to set the row
```bash
sudo bash "ubuntu/tor/install-tor.sh"
```

##### tree
To configure `ubuntu.sh` file for installing `tree` need to set the row
```bash
sudo bash "ubuntu/tree/install-tree.sh"
```

##### vagrant
To configure `ubuntu.sh` file for installing `vagrant` need to set the row
```bash
sudo bash "ubuntu/vagrant/install-vagrant.sh" VAGRANT_VERSION
```

###### Required arguments:
`VAGRANT_VERSION` - example values: `1.8.4` or `1.8.5`, ...

##### vim
To configure `ubuntu.sh` file for installing `vim` need to set the row
```bash
sudo bash "ubuntu/vim/install-vim.sh"
```
To configure `ubuntu.sh` file for installing [dotvim](https://github.com/bogdanvlviv/dotvim) need to set the row
```bash
bash "ubuntu/vim/install-dotvim.sh"
```
To configure `ubuntu.sh` file for setting `vim` as default editor need to set the row
```bash
bash "ubuntu/vim/set-vim-as-default-editor.sh"
```

##### xclip
To configure `ubuntu.sh` file for installing `xclip` need to set the row
```bash
sudo bash "ubuntu/xclip/install-xclip.sh"
```

##### xterm
To configure `ubuntu.sh` file for installing `xterm` need to set the row
```bash
sudo bash "ubuntu/xterm/install-xterm.sh"
```
To configure `ubuntu.sh` file for installing [dotX](https://github.com/bogdanvlviv/dotX) need to set the row
```bash
bash "ubuntu/xterm/install-dotX.sh"
```
