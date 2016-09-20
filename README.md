# i-vagrant
i-vagrant helps set up a development environment easily.

Try to fork this repository and build i-vagrant for own needs.

## Getting Started Guide
Download i-vagrant
```bash
$ git clone https://github.com/bogdanvlviv/i-vagrant.git
$ cd i-vagrant/
```

### Setting up current local machine
To set up a development environment on local machine, need configure `i-vagrant` file.
After configure `i-vagrant` file need to run
```bash
$ source i-vagrant
```

### How to configure `i-vagrant` file

- [ubuntu](#ubuntu)
  - [bashrc](#bashrc)
  - [curl](#curl)
  - [exuberant-ctags](#exuberant-ctags)
  - [fzf](#fzf)
  - [git](#git)
  - [graphviz](#graphviz)
  - [htop](#htop)
  - [imagemagick](#imagemagick)
  - [mc](#mc)
  - [mongodb](#mongodb)
  - [mosh](#mosh)
  - [mysql](#mysql)
  - [nmap](#nmap)
  - [nodejs](#nodejs)
  - [phantomjs](#phantomjs)
  - [postgresql](#postgresql)
  - [redis](#redis)
  - [ruby](#ruby)
  - [sqlite3](#sqlite3)
  - [ssh](#ssh)
  - [the_silver_searcher](#the_silver_searcher)
  - [tmux](#tmux)
  - [vagrant](#vagrant)
  - [vim](#vim)
  - [xterm](#xterm)

#### ubuntu

##### bashrc
To configure `i-vagrant` file for setting `LC_ALL` environment variable need to set the row
```bash
bash "ubuntu/bashrc/set-lc_all-variable.sh"
```
To configure `i-vagrant` file for setting `TERM` environment variable need to set the row
```bash
bash "ubuntu/bashrc/set-term-variable.sh"
```

##### curl
To configure `i-vagrant` file for installing `curl` need to set the row
```bash
sudo bash "ubuntu/curl/install-curl.sh"
```

##### exuberant-ctags
To configure `i-vagrant` file for installing `exuberant-ctags` need to set the row
```bash
sudo bash "ubuntu/exuberant-ctags/install-exuberant-ctags.sh"
```

##### fzf
To configure `i-vagrant` file for installing `fzf` need to set the row
```bash
bash "ubuntu/fzf/install-fzf.sh"
```

##### git
To configure `i-vagrant` file for installing `git` need to set the row
```bash
sudo bash "ubuntu/git/install-git.sh"
```

##### graphviz
To configure `i-vagrant` file for installing `graphviz` need to set the row
```bash
sudo bash "ubuntu/graphviz/install-graphviz.sh"
```

##### htop
To configure `i-vagrant` file for installing `htop` need to set the row
```bash
sudo bash "ubuntu/htop/install-htop.sh"
```

##### imagemagick
To configure `i-vagrant` file for installing `imagemagick` need to set the row
```bash
sudo bash "ubuntu/imagemagick/install-imagemagick.sh"
```

##### mc
To configure `i-vagrant` file for installing `mc` need to set the row
```bash
sudo bash "ubuntu/mc/install-mc.sh"
```

##### mongodb
To configure `i-vagrant` file for installing `mongodb` need to set the row
```bash
sudo bash "ubuntu/mongodb/install-mongodb.sh" MONGODB_VERSION UBUNTU_RELEASE_CODENAME
```

###### Required arguments:
`MONGODB_VERSION` - example values: `3.0` or `3.2`, ...

`UBUNTU_RELEASE_CODENAME` - example values: `trusty`, `xenial`, ...

##### mosh
To configure `i-vagrant` file for installing `mosh` need to set the row
```bash
sudo bash "ubuntu/mosh/install-mosh.sh"
```

##### mysql
To configure `i-vagrant` file for installing `mysql` need to set the row
```bash
sudo bash "ubuntu/mysql/install-mysql.sh" MYSQL_USER_ROOT_PASSWORD ADDITIONAL_LIBRARIES
```

###### Required arguments:
`MYSQL_USER_ROOT_PASSWORD` - example values: `password` or `password1`, ...

During installing MySQL create `mysql user` named `root`, need to set password for him.

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libmysqlclient-dev` or `libmysqlclient-dev mysql-testsuite`, ...

##### nmap
To configure `i-vagrant` file for installing `nmap` need to set the row
```bash
sudo bash "ubuntu/nmap/install-nmap.sh"
```

##### nodejs
To configure `i-vagrant` file for installing `nvm` need to set the row
```bash
bash "ubuntu/nodejs/install-nvm.sh" NVM_VERSION
```
To configure `i-vagrant` file for installing `nodejs` after installation `nvm` need to set the row
```bash
bash "ubuntu/nodejs/install-nodejs.sh" NODEJS_VERSION
```

###### Required arguments:
`NVM_VERSION` - example values: `0.31.6` or `0.31.7`, ...

`NODEJS_VERSION` - example values: `4.5.0` or `6.5.0`, ...

##### phantomjs
To configure `i-vagrant` file for installing `phantomjs` need to set the row
```bash
sudo bash "ubuntu/phantomjs/install-phantomjs.sh"
```

##### postgresql
To configure `i-vagrant` file for installing `postgresql` need to set the row
```bash
sudo bash "ubuntu/postgresql/install-postgresql.sh" POSTGRESQL_VERSION UBUNTU_RELEASE_CODENAME ADDITIONAL_LIBRARIES
```
To configure `i-vagrant` file for create `postgresql user` after installation `postgresql` need to set the row
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

##### redis
To configure `i-vagrant` file for installing `redis` need to set the row
```bash
sudo bash "ubuntu/redis/install-redis.sh"
```

##### ruby
To configure `i-vagrant` file for installing `rvm` need to set the row
```bash
bash "ubuntu/ruby/install-rvm.sh" RVM_VERSION
```
To configure `i-vagrant` file for installing `ruby` after installation `rvm` need to set the row
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
To configure `i-vagrant` file for installing `sqlite3` need to set the row
```bash
sudo bash "ubuntu/sqlite3/install-sqlite3.sh" ADDITIONAL_LIBRARIES
```

###### Optional arguments:
`ADDITIONAL_LIBRARIES` - example values: `libsqlite3-dev` or `libsqlite3-dev libsqlite3-tcl`, ...

##### ssh
To configure `i-vagrant` file for installing `openssh-client` need to set the row
```bash
sudo bash "ubuntu/ssh/install-openssh-client.sh"
```
To configure `i-vagrant` file for installing `openssh-server` need to set the row
```bash
sudo bash "ubuntu/ssh/install-openssh-server.sh"
```
To configure `i-vagrant` to set `change sshd_config` need to set the row
```bash
bash "ubuntu/ssh/change-sshd_config.sh", SSH_PORT PASSWORD_AUTHENTICATION
```
To configure `i-vagrant` to set `authorized_keys` need to set the row
```bash
bash "ubuntu/ssh/set-authorized_keys.sh"
```
NOTICE: Add your own `authorized_keys` in the `ubuntu/ssh/set-authorized_keys.sh` file!

###### Required arguments:
`SSH_PORT` - example values: `22` or `2222`, ...

`PASSWORD_AUTHENTICATION` - example values: `yes` or `no`

##### the_silver_searcher
To configure `i-vagrant` file for installing `the_silver_searcher` need to set the row
```bash
sudo bash "ubuntu/the_silver_searcher/install-the_silver_searcher.sh"
```

##### tmux
To configure `i-vagrant` file for installing `tmux` need to set the row
```bash
sudo bash "ubuntu/tmux/install-tmux.sh"
```
To configure `i-vagrant` file for installing `dottmux` after installation `tmux` need to set the row
```bash
bash "ubuntu/tmux/install-dottmux.sh"
```

##### vagrant
To configure `i-vagrant` file for installing `vagrant` need to set the row
```bash
sudo bash "ubuntu/vagrant/install-vagrant.sh" VAGRANT_VERSION
```

###### Required arguments:
`VAGRANT_VERSION` - example values: `1.8.4` or `1.8.5`, ...

##### vim
To configure `i-vagrant` file for installing `vim` need to set the row
```bash
sudo bash "ubuntu/vim/install-vim.sh"
```
To configure `i-vagrant` file for installing `dotvim` after installation `vim` need to set the row
```bash
bash "ubuntu/vim/install-dotvim.sh"
```
To configure `i-vagrant` file for setting `vim` as default editor after installation need to set the row
```bash
bash "ubuntu/vim/set-vim-as-default-editor.sh"
```

##### xterm
To configure `i-vagrant` file for installing `xterm` need to set the row
```bash
sudo bash "ubuntu/xterm/install-xterm.sh"
```
To configure `i-vagrant` file for installing `dotX` after installation `xterm` need to set the row
```bash
bash "ubuntu/xterm/install-dotX.sh"
```
