# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/bionic64'

  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '2048'
    vb.cpus = '2'
  end

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

  # rails
  config.vm.network 'forwarded_port', guest: 3000, host: 3000

  # ubuntu

  # upgrade
  # config.vm.provision :shell, path: 'ubuntu/upgrade/make-upgrade_packages.sh', privileged: true

  # bashrc
  # config.vm.provision :shell, path: 'ubuntu/bashrc/set-lc_all-variable.sh', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/bashrc/set-term-variable.sh', privileged: false

  # android_studio
  # config.vm.provision :shell, path: 'ubuntu/android_studio/install-android_studio.sh', privileged: true

  # atom
  # config.vm.provision :shell, path: 'ubuntu/atom/install-atom.sh', privileged: true

  # cmus
  # config.vm.provision :shell, path: 'ubuntu/cmus/install-cmus.sh', privileged: true

  # curl
  # config.vm.provision :shell, path: 'ubuntu/curl/install-curl.sh', privileged: true

  # docker
  # config.vm.provision :shell, path: 'ubuntu/docker/install-docker.sh', args: 'bionic', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/docker/install-docker-compose.sh', args: '1.23.1', privileged: true

  # elasticsearch
  # config.vm.provision :shell, path: 'ubuntu/elasticsearch/install-elasticsearch.sh', args: '6.5.0', privileged: true

  # exuberant-ctags
  # config.vm.provision :shell, path: 'ubuntu/exuberant-ctags/install-exuberant-ctags.sh', privileged: true

  # ffmpeg
  # config.vm.provision :shell, path: 'ubuntu/ffmpeg/install-ffmpeg.sh', privileged: true

  # firefox
  # config.vm.provision :shell, path: 'ubuntu/firefox/install-firefox.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/firefox/install-geckodriver.sh', args: '0.23.0', privileged: true

  # flatpak
  # config.vm.provision :shell, path: 'ubuntu/flatpak/install-flatpak.sh', privileged: true

  # fzf
  # config.vm.provision :shell, path: 'ubuntu/fzf/install-fzf.sh', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/fzf/set-fzf_default_command.sh', privileged: false

  # gimp
  # config.vm.provision :shell, path: 'ubuntu/gimp/install-gimp.sh', privileged: true

  # git
  # config.vm.provision :shell, path: 'ubuntu/git/install-git.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/git/install-diff-highlight.sh', privileged: true

  # go
  # config.vm.provision :shell, path: 'ubuntu/go/install-go.sh', args: '1.11.2', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/go/set-go-bin-to-path-variable.sh', privileged: false

  # google-chrome
  # config.vm.provision :shell, path: 'ubuntu/google-chrome/install-google-chrome.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/google-chrome/install-chromedriver.sh', args: '2.43', privileged: true

  # graphviz
  # config.vm.provision :shell, path: 'ubuntu/graphviz/install-graphviz.sh', privileged: true

  # heroku
  # config.vm.provision :shell, path: 'ubuntu/heroku/install-heroku-cli.sh', privileged: true

  # htop
  # config.vm.provision :shell, path: 'ubuntu/htop/install-htop.sh', privileged: true

  # imagemagick
  # config.vm.provision :shell, path: 'ubuntu/imagemagick/install-imagemagick.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/imagemagick/add-imagemagick-shorthands.sh', privileged: true

  # java
  # config.vm.provision :shell, path: 'ubuntu/java/install-java.sh', args: '11', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/java/install-oracle-java.sh', args: '8', privileged: true

  # jq
  # config.vm.provision :shell, path: 'ubuntu/jq/install-jq.sh', privileged: true

  # kubernetes
  # config.vm.provision :shell, path: 'ubuntu/kubernetes/install-kubectl.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/kubernetes/install-minikube.sh', privileged: true

  # letsencrypt
  # config.vm.provision :shell, path: 'ubuntu/letsencrypt/install-letsencrypt.sh', privileged: true

  # libxml2
  # config.vm.provision :shell, path: 'ubuntu/libxml2/install-libxml2.sh', args: 'libxml2-dev', privileged: true

  # mc
  # config.vm.provision :shell, path: 'ubuntu/mc/install-mc.sh', privileged: true

  # memcached
  # config.vm.provision :shell, path: 'ubuntu/memcached/install-memcached.sh', privileged: true

  # mongodb
  # config.vm.provision :shell, path: 'ubuntu/mongodb/install-mongodb.sh', args: '3.6 bionic', privileged: true

  # mupdf
  # config.vm.provision :shell, path: 'ubuntu/mupdf/install-mupdf.sh', privileged: true

  # mosh
  # config.vm.provision :shell, path: 'ubuntu/mosh/install-mosh.sh', privileged: true

  # mysql
  # config.vm.provision :shell, path: 'ubuntu/mysql/install-mysql.sh', args: 'admin libmysqlclient-dev', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/mysql/install-mariadb.sh', args: '10.3 bionic admin libmysqlclient-dev', privileged: true

  # network-manager
  # config.vm.provision :shell, path: 'ubuntu/network-manager/install-network-manager.sh', privileged: true

  # nginx
  # config.vm.provision :shell, path: 'ubuntu/nginx/install-nginx.sh', privileged: true

  # ngrok
  # config.vm.provision :shell, path: 'ubuntu/ngrok/install-ngrok.sh', privileged: true

  # nmap
  # config.vm.provision :shell, path: 'ubuntu/nmap/install-nmap.sh', privileged: true

  # nodejs
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-nvm.sh', args: '0.33.11', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-nodejs.sh', args: '10.13.0', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-yarn.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-eslint.sh', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/nodejs/install-stylelint.sh', privileged: false

  # overmind
  # config.vm.provision :shell, path: 'ubuntu/overmind/install-overmind.sh', args: '1.2.1', privileged: true

  # phantomjs
  # config.vm.provision :shell, path: 'ubuntu/phantomjs/install-phantomjs.sh', privileged: true

  # poppler
  # config.vm.provision :shell, path: 'ubuntu/poppler/install-poppler.sh', privileged: true

  # postgresql
  # config.vm.provision :shell, path: 'ubuntu/postgresql/install-postgresql.sh', args: '11 bionic libpq-dev pgadmin4', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/postgresql/create-user.sh', args: 'root admin', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/postgresql/set-psqlrc.sh', privileged: false

  # python
  # config.vm.provision :shell, path: 'ubuntu/python/install-pyenv.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/python/install-python.sh', args: 'pyenv 2.7.15', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/python/install-python.sh', args: 'pyenv 3.7.1', privileged: true

  # rar
  # config.vm.provision :shell, path: 'ubuntu/rar/install-rar.sh', privileged: true

  # rbspy
  # config.vm.provision :shell, path: 'ubuntu/rbspy/install-rbspy.sh', args: '0.3.3', privileged: true

  # readline
  # config.vm.provision :shell, path: 'ubuntu/readline/set-inputrc.sh', privileged: false

  # redis
  # config.vm.provision :shell, path: 'ubuntu/redis/install-redis.sh', privileged: true

  # ruby
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-rbenv.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby-build.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-rbenv-ctags.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-rbenv-vars.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 1.9.3-p551 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.0.0-p648 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.1.10 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.2.10 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.3.8 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.4.5 bundler', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.5.3', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/install-ruby.sh', args: 'rbenv 2.6.0 jekyll rails rubocop tmuxinator', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ruby/prepare-for-rails-development.sh', args: 'vagrant root admin', privileged: false

  # siege
  # config.vm.provision :shell, path: 'ubuntu/siege/install-siege.sh', privileged: true

  # simplescreenrecorder
  # config.vm.provision :shell, path: 'ubuntu/simplescreenrecorder/install-simplescreenrecorder.sh', privileged: true

  # sqlite3
  # config.vm.provision :shell, path: 'ubuntu/sqlite3/install-sqlite3.sh', args: 'libsqlite3-dev', privileged: true

  # ssh
  # config.vm.provision :shell, path: 'ubuntu/ssh/install-openssh-client.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ssh/install-openssh-server.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ssh/change-sshd_config.sh', args: '2222 no', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/ssh/set-authorized_keys.sh', privileged: false

  # sublimetext
  # config.vm.provision :shell, path: 'ubuntu/sublimetext/install-sublimetext.sh', privileged: true

  # the_silver_searcher
  # config.vm.provision :shell, path: 'ubuntu/the_silver_searcher/install-the_silver_searcher.sh', privileged: true

  # tmux
  # config.vm.provision :shell, path: 'ubuntu/tmux/install-tmux.sh', args: '2.8', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/tmux/install-dottmux.sh', privileged: false

  # tor
  # config.vm.provision :shell, path: 'ubuntu/tor/install-tor.sh', privileged: true

  # tree
  # config.vm.provision :shell, path: 'ubuntu/tree/install-tree.sh', privileged: true

  # vagrant
  # config.vm.provision :shell, path: 'ubuntu/vagrant/install-vagrant.sh', args: '2.2.1', privileged: true

  # vim
  # config.vm.provision :shell, path: 'ubuntu/vim/install-vim.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/vim/install-dotvim.sh', privileged: false
  # config.vm.provision :shell, path: 'ubuntu/vim/set-vim-as-default-editor.sh', privileged: false

  # virtualbox
  # config.vm.provision :shell, path: 'ubuntu/virtualbox/install-virtualbox.sh', args: '5.2.22 5.2_5.2.22-126460 bionic', privileged: true

  # vscode
  # config.vm.provision :shell, path: 'ubuntu/vscode/install-vscode.sh', privileged: true

  # wkhtmltopdf
  # config.vm.provision :shell, path: 'ubuntu/wkhtmltopdf/install-wkhtmltopdf.sh', args: '0.12.4', privileged: true

  # xclip
  # config.vm.provision :shell, path: 'ubuntu/xclip/install-xclip.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/xclip/add-xclip-shorthands.sh', privileged: false

  # xterm
  # config.vm.provision :shell, path: 'ubuntu/xterm/install-xterm.sh', privileged: true
  # config.vm.provision :shell, path: 'ubuntu/xterm/install-dotX.sh', privileged: false

  # zoom
  # config.vm.provision :shell, path: 'ubuntu/zoom/install-zoom.sh', privileged: true
end
