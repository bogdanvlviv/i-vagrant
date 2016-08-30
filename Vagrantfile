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

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network 'public_network'

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

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
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

  #ruby
  config.vm.provision :shell, path: 'ruby/install-rvm.sh', args: 'stable', privileged: false
  config.vm.provision :shell, path: 'ruby/install-ruby.sh', args: '1.9.3 bundler', privileged: false
  config.vm.provision :shell, path: 'ruby/install-ruby.sh', args: '2.0.0 bundler', privileged: false
  config.vm.provision :shell, path: 'ruby/install-ruby.sh', args: '2.1.9 bundler', privileged: false
  config.vm.provision :shell, path: 'ruby/install-ruby.sh', args: '2.2.5 bundler', privileged: false
  config.vm.provision :shell, path: 'ruby/install-ruby.sh', args: '2.3.1 bundler rails', privileged: false

  # vim
  config.vm.provision :shell, path: 'vim/install-vim.sh', privileged: true

  # tmux
  config.vm.provision :shell, path: 'tmux/install-tmux.sh', privileged: true

  # git
  config.vm.provision :shell, path: 'git/install-git.sh', privileged: true

  # postgresql
  config.vm.provision :shell, path: 'postgresql/install-postgresql.sh', args: '9.5 xenial libpq-dev', privileged: true
  config.vm.provision :shell, path: 'postgresql/create-user.sh', args: 'root admin', privileged: true

  # mysql
  config.vm.provision :shell, path: 'mysql/install-mysql.sh', args: 'admin libmysqlclient-dev', privileged: true

  # sqlite3
  config.vm.provision :shell, path: 'sqlite3/install-sqlite3.sh', args: 'libsqlite3-dev', privileged: true

  # mongodb
  config.vm.provision :shell, path: 'mongodb/install-mongodb.sh', args: '3.2 xenial', privileged: true
end
