# upgrade
bash "android/termux/upgrade/make-upgrade_packages.sh"

# bashrc
bash "android/termux/bashrc/set-lc_all-variable.sh"
bash "android/termux/bashrc/set-term-variable.sh"

# ctags
bash "android/termux/ctags/install-ctags.sh"

# curl
bash "android/termux/curl/install-curl.sh"

# fzf
bash "android/termux/fzf/install-fzf.sh"
bash "android/termux/fzf/set-fzf_default_command.sh"

# git
bash "android/termux/git/install-git.sh"

# htop
bash "android/termux/htop/install-htop.sh"

# imagemagick
bash "android/termux/imagemagick/install-imagemagick.sh"

# make
bash "android/termux/make/install-make.sh"

# man
bash "android/termux/man/install-man.sh"

# mc
bash "android/termux/mc/install-mc.sh"

# mosh
bash "android/termux/mosh/install-mosh.sh"

# nmap
bash "android/termux/nmap/install-nmap.sh"

# nodejs
bash "android/termux/nodejs/install-nodejs.sh"

# readline
bash "android/termux/readline/set-inputrc.sh"

# rsync
bash "android/termux/rsync/install-rsync.sh"

# ruby
bash "android/termux/ruby/install-ruby.sh" bundler rubocop tmuxinator

# sqlite
bash "android/termux/sqlite/install-sqlite.sh"

# ssh
bash "android/termux/ssh/install-openssh.sh"
bash "android/termux/ssh/change-sshd_config.sh" 2222 no
bash "android/termux/ssh/set-authorized_keys.sh"

# termux_api
bash "android/termux/termux_api/install-termux_api.sh"

# the_silver_searcher
bash "android/termux/the_silver_searcher/install-the_silver_searcher.sh"

# tmux
bash "android/termux/tmux/install-tmux.sh"
bash "android/termux/tmux/install-dottmux.sh"

# tree
bash "android/termux/tree/install-tree.sh"

# vim
bash "android/termux/vim/install-vim.sh"
bash "android/termux/vim/install-dotvim.sh"
bash "android/termux/vim/set-vim-as-default-editor.sh"

# xterm
bash "android/termux/xterm/install-dotX.sh"

# zip
bash "android/termux/zip/install-zip.sh"

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://github.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
