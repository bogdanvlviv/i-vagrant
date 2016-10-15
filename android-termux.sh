# bashrc
bash "android/termux/bashrc/set-lc_all-variable.sh"
bash "android/termux/bashrc/set-term-variable.sh"

# ctags
bash "android/termux/ctags/install-ctags.sh"

# curl
bash "android/termux/curl/install-curl.sh"

# fzf
bash "android/termux/fzf/install-fzf.sh"

# git
bash "android/termux/git/install-git.sh"

# htop
bash "android/termux/htop/install-htop.sh"

# imagemagick
bash "android/termux/imagemagick/install-imagemagick.sh"

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

#ruby
bash "android/termux/ruby/install-ruby.sh" bundler rubocop tmuxinator

# sqlite
bash "android/termux/sqlite/install-sqlite.sh"

# ssh
bash "android/termux/ssh/install-openssh.sh"
bash "android/termux/ssh/change-sshd_config.sh" 2222 no
bash "android/termux/ssh/set-authorized_keys.sh"

# the_silver_searcher
bash "android/termux/the_silver_searcher/install-the_silver_searcher.sh"

# tmux
bash "android/termux/tmux/install-tmux.sh"
bash "android/termux/tmux/install-dottmux.sh"

# vim
bash "android/termux/vim/install-vim.sh"
bash "android/termux/vim/install-dotvim.sh"
bash "android/termux/vim/set-vim-as-default-editor.sh"

# xterm
bash "android/termux/xterm/install-dotX.sh"

echo ""
echo "Running: \`source \"$HOME/.bashrc\"\`"
source "$HOME/.bashrc"
echo ""
echo "==================================================="
echo "i-vagrant: https://github.com/bogdanvlviv/i-vagrant"
echo "==================================================="
echo ""
