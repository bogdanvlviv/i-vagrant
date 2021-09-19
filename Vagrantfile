required_plugins = ['vagrant-disksize']
required_plugins.each do |plugin|
  unless Vagrant.has_plugin? plugin
    abort "Need to install '#{plugin}' plugin."
  end
end

Vagrant.configure('2') do |config|
  config.vm.provider 'virtualbox' do |vb, override|
    vb.memory = '16384'
    vb.cpus = '4'

    override.vm.box = 'ubuntu/focal64'
    override.disksize.size = '200GB'
  end

  config.vm.network 'private_network', ip: '192.168.33.10'

  config.vm.network 'forwarded_port', guest: 3000, host: 3000, auto_correct: true

  config.vm.synced_folder '~/work', '/home/vagrant/work'

  # git
  config.vm.provision :file, source: '~/.gitconfig', destination: '~/.gitconfig'
  config.vm.provision :file, source: '~/.gitconfig_gitlab', destination: '~/.gitconfig_gitlab'
  config.vm.provision :file, source: '~/.gitignore_global', destination: '~/.gitignore_global'

  # gnupg
  config.vm.provision :file, source: '~/.gnupg/', destination: '~/.gnupg'

  # ssh
  config.vm.provision :file, source: '~/.ssh/id_rsa', destination: '~/.ssh/id_rsa'
  config.vm.provision :file, source: '~/.ssh/id_rsa.pub', destination: '~/.ssh/id_rsa.pub'
  # config.vm.provision :file, source: '~/bogdan/ssh/private_ssh/.ssh/id_rsa', destination: '~/.ssh/id_rsa'
  # config.vm.provision :file, source: '~/bogdan/ssh/private_ssh/.ssh/id_rsa.pub', destination: '~/.ssh/id_rsa.pub'
  # config.vm.provision :file, source: '~/bogdan/ssh/gitlab_ssh/.ssh/id_ed25519', destination: '~/.ssh/id_ed25519'
  # config.vm.provision :file, source: '~/bogdan/ssh/gitlab_ssh/.ssh/id_ed25519.pub', destination: '~/.ssh/id_ed25519.pub'
  config.vm.provision :shell, inline: 'chmod 600 ~/.ssh/id_rsa', privileged: false
  config.vm.provision :shell, inline: 'chmod 600 ~/.ssh/id_rsa.pub', privileged: false
  # config.vm.provision :shell, inline: 'chmod 600 ~/.ssh/id_ed25519', privileged: false
  # config.vm.provision :shell, inline: 'chmod 600 ~/.ssh/id_ed25519.pub', privileged: false
end
