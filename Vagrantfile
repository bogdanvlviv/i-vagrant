# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure('2') do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = 'ubuntu/xenial64'

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # mongodb
  # config.vm.network 'forwarded_port', guest: 27017, host: 37017

  # mysql
  # config.vm.network 'forwarded_port', guest: 3306, host: 33061

  # postgresql
  # config.vm.network 'forwarded_port', guest: 5432, host: 54321

  # rails
  # config.vm.network 'forwarded_port', guest: 3000, host: 30001

  # redis
  # config.vm.network 'forwarded_port', guest: 6379, host: 63791

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.synced_folder '~/active_projects', '/active_projects'

  # git
  config.vm.provision :file, source: '~/.gitconfig', destination: '~/.gitconfig'
  config.vm.provision :file, source: '~/.gitignore_global', destination: '~/.gitignore_global'

  # gnupg
  config.vm.provision :file, source: '~/.gnupg/gpg.conf', destination: '~/.gnupg/gpg.conf'
  config.vm.provision :file, source: '~/.gnupg/pubring.gpg', destination: '~/.gnupg/pubring.gpg'
  config.vm.provision :file, source: '~/.gnupg/secring.gpg', destination: '~/.gnupg/secring.gpg'
  config.vm.provision :file, source: '~/.gnupg/trustdb.gpg', destination: '~/.gnupg/trustdb.gpg'

  # ssh
  config.vm.provision :file, source: '~/.ssh/id_rsa', destination: '~/.ssh/id_rsa'
  config.vm.provision :file, source: '~/.ssh/id_rsa.pub', destination: '~/.ssh/id_rsa.pub'
  config.vm.provision :shell, inline: 'chmod 600 ~/.ssh/id_rsa', privileged: false
  config.vm.provision :shell, inline: 'chmod 600 ~/.ssh/id_rsa.pub', privileged: false

  # config.ssh.forward_agent = true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt update
  #   apt install -y apache2
  # SHELL

  # ubuntu

  # upgrade
  config.vm.provision :shell, path: 'ubuntu/upgrade/make-upgrade_packages.sh', privileged: true

  # bashrc
  config.vm.provision :shell, path: 'ubuntu/bashrc/set-lc_all-variable.sh', privileged: false
  config.vm.provision :shell, path: 'ubuntu/bashrc/set-term-variable.sh', privileged: false

  # cmus
  # config.vm.provision :shell, path: 'ubuntu/cmus/install-cmus.sh', privileged: true

  # curl
  config.vm.provision :shell, path: 'ubuntu/curl/install-curl.sh', privileged: true

  # docker
  # config.vm.provision :shell, path: 'ubuntu/docker/install-docker.sh', args: 'xenial', privileged: true

  # elasticsearch
  # config.vm.provision :shell, path: 'ubuntu/elasticsearch/install-elasticsearch.sh', args: '5.6.3', privileged: true

  # exuberant-ctags
  config.vm.provision :shell, path: 'ubuntu/exuberant-ctags/install-exuberant-ctags.sh', privileged: true

  # fzf
  config.vm.provision :shell, path: 'ubuntu/fzf/install-fzf.sh', privileged: false
  config.vm.provision :shell, path: 'ubuntu/fzf/set-fzf_default_command.sh', privileged: false

  # git
  config.vm.provision :shell, path: 'ubuntu/git/install-git.sh', privileged: true

  # google-chrome
  # config.vm.provision :shell, path: 'ubuntu/google-chrome/install-google-chrome.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/google-chrome/install-chromedriver.sh', args: '2.33', privileged: true

  # graphviz
  # config.vm.provision :shell, path: 'ubuntu/graphviz/install-graphviz.sh', privileged: true

  # heroku
  # config.vm.provision :shell, path: 'ubuntu/heroku/install-heroku-cli.sh', privileged: true

  # htop
  config.vm.provision :shell, path: 'ubuntu/htop/install-htop.sh', privileged: true

  # imagemagick
  # config.vm.provision :shell, path: 'ubuntu/imagemagick/install-imagemagick.sh', privileged: true

  # java
  # config.vm.provision :shell, path: 'ubuntu/java/install-java.sh', args: '9', privileged: true

  # letsencrypt
  # config.vm.provision :shell, path: 'ubuntu/letsencrypt/install-letsencrypt.sh', privileged: true

  # libxml2
  # config.vm.provision :shell, path: 'ubuntu/libxml2/install-libxml2.sh', args: 'libxml2-dev', privileged: true

  # mc
  # config.vm.provision :shell, path: 'ubuntu/mc/install-mc.sh', privileged: true

  # memcached
  # config.vm.provision :shell, path: 'ubuntu/memcached/install-memcached.sh', privileged: true

  # mongodb
  # config.vm.provision :shell, path: 'ubuntu/mongodb/install-mongodb.sh', args: '3.4 xenial', privileged: true

  # mosh
  # config.vm.provision :shell, path: 'ubuntu/mosh/install-mosh.sh', privileged: true

  # mysql
  # config.vm.provision :shell, path: 'ubuntu/mysql/install-mysql.sh', args: 'admin libmysqlclient-dev', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/mysql/install-mariadb.sh', args: '10.2 xenial admin libmysqlclient-dev', privileged: true

  # network-manager
  config.vm.provision :shell, path: 'ubuntu/network-manager/install-network-manager.sh', privileged: true

  # nmap
  config.vm.provision :shell, path: 'ubuntu/nmap/install-nmap.sh', privileged: true

  # nodejs
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-nvm.sh', args: '0.33.6', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-nodejs.sh', args: '8.7.0', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-yarn.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-eslint.sh', privileged: false

  # phantomjs
  # config.vm.provision :shell, path: 'ubuntu/phantomjs/install-phantomjs.sh', privileged: true

  # postgresql
  # config.vm.provision :shell, path: 'ubuntu/postgresql/install-postgresql.sh', args: '10 xenial libpq-dev', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/postgresql/create-user.sh', args: 'root admin', privileged: true

  # readline
  config.vm.provision :shell, path: 'ubuntu/readline/set-inputrc.sh', privileged: false

  # redis
  # config.vm.provision :shell, path: 'ubuntu/redis/install-redis.sh', privileged: true

  # ruby
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-rbenv.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby-build.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-rbenv-ctags.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-rbenv-vars.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 1.9.3-p551 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.0.0-p648 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.1.9 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.2.8 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.3.5 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.4.2 bundler jekyll rails rubocop tmuxinator', privileged: true

  # simplescreenrecorder
  # config.vm.provision :shell, path: 'ubuntu/simplescreenrecorder/install-simplescreenrecorder.sh', privileged: true

  # sqlite3
  # config.vm.provision :shell, path: 'ubuntu/sqlite3/install-sqlite3.sh', args: 'libsqlite3-dev', privileged: true

  # ssh
  # config.vm.provision :shell, path: 'ubuntu/ssh/install-openssh-client.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ssh/install-openssh-server.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ssh/change-sshd_config.sh', args: '2222 no', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ssh/set-authorized_keys.sh', privileged: false

  # the_silver_searcher
  config.vm.provision :shell, path: 'ubuntu/the_silver_searcher/install-the_silver_searcher.sh', privileged: true

  # tmux
  config.vm.provision :shell, path: 'ubuntu/tmux/install-tmux.sh', privileged: true
  config.vm.provision :shell, path: 'ubuntu/tmux/install-dottmux.sh', privileged: false

  # tor
  # config.vm.provision :shell, path: 'ubuntu/tor/install-tor.sh', privileged: true

  # tree
  # config.vm.provision :shell, path: 'ubuntu/tree/install-tree.sh', privileged: true

  # vagrant
  # config.vm.provision :shell, path: 'ubuntu/vagrant/install-vagrant.sh', args: '2.0.0', privileged: true

  # vim
  config.vm.provision :shell, path: 'ubuntu/vim/install-vim.sh', privileged: true
  config.vm.provision :shell, path: 'ubuntu/vim/install-dotvim.sh', privileged: false
  config.vm.provision :shell, path: 'ubuntu/vim/set-vim-as-default-editor.sh', privileged: false

  # virtualbox
  # config.vm.provision :shell, path: 'ubuntu/virtualbox/install-virtualbox.sh', args: 'xenial', privileged: true

  # xclip
  config.vm.provision :shell, path: 'ubuntu/xclip/install-xclip.sh', privileged: true

  # xterm
  # config.vm.provision :shell, path: 'ubuntu/xterm/install-xterm.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/xterm/install-dotX.sh', privileged: false
end
