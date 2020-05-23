required_plugins = ['vagrant-disksize']
required_plugins.each do |plugin|
  unless Vagrant.has_plugin? plugin
    abort "Need to install '#{plugin}' plugin."
  end
end

Vagrant.configure('2') do |config|
  config.vm.provider 'virtualbox' do |vb, override|
    vb.memory = '4096'
    vb.cpus = '2'

    override.vm.box = 'ubuntu/focal64'
    override.disksize.size = '50GB'
  end

  config.vm.provider 'docker' do |d, override|
    d.build_dir = 'docker-vagrant'
    d.has_ssh = true
    d.remains_running = true
  end

  config.vm.network 'private_network', ip: '192.168.33.10'

  config.vm.network 'forwarded_port', guest: 3000, host: 3000, auto_correct: true

  config.vm.synced_folder '~/work', '/work'

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
end
