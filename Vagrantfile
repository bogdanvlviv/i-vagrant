Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/bionic64'

  config.disksize.size = '20GB'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '4096'
    vb.cpus = '2'
  end

  config.vm.network 'private_network', ip: '192.168.33.10'

  config.vm.network 'forwarded_port', guest: 3000, host: 3000

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
