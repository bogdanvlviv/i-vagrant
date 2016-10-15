### Setting up android
To set up a development environment with [termux](https://termux.com), need configure `android-termux.sh` file.
After configure `android-termux.sh` file need to run
```bash
$ source android-termux.sh
```

#### How to configure `android-termux.sh` file

- [bashrc](#bashrc)
- [ctags](#ctags)
- [curl](#curl)
- [fzf](#fzf)
- [git](#git)
- [htop](#htop)
- [imagemagick](#imagemagick)
- [java](#java)
- [mc](#mc)
- [mosh](#mosh)
- [nmap](#nmap)
- [nodejs](#nodejs)
- [readline](#readline)
- [ruby](#ruby)
- [sqlite](#sqlite)
- [ssh](#ssh)
- [the_silver_searcher](#the_silver_searcher)
- [tmux](#tmux)
- [vagrant](#vagrant)
- [vim](#vim)
- [xterm](#xterm)

##### bashrc
To configure `android-termux.sh` file for setting `LC_ALL` environment variable need to set the row
```bash
bash "android/termux/bashrc/set-lc_all-variable.sh"
```
To configure `android-termux.sh` file for setting `TERM` environment variable need to set the row
```bash
bash "android/termux/bashrc/set-term-variable.sh"
```

##### curl
To configure `android-termux.sh` file for installing `curl` need to set the row
```bash
bash "android/termux/ctags/install-ctags.sh"
```

##### ctags
To configure `android-termux.sh` file for installing `ctags` need to set the row
```bash
bash "android/termux/ctags/install-ctags.sh"
```

##### fzf
To configure `android-termux.sh` file for installing `fzf` need to set the row
```bash
bash "android/termux/fzf/install-fzf.sh"
```

##### git
To configure `android-termux.sh` file for installing `git` need to set the row
```bash
bash "android/termux/git/install-git.sh"
```

##### htop
To configure `android-termux.sh` file for installing `htop` need to set the row
```bash
bash "android/termux/htop/install-htop.sh"
```

##### imagemagick
To configure `android-termux.sh` file for installing `imagemagick` need to set the row
```bash
bash "android/termux/imagemagick/install-imagemagick.sh"
```

##### mc
To configure `android-termux.sh` file for installing `mc` need to set the row
```bash
bash "android/termux/mc/install-mc.sh"
```

##### mosh
To configure `android-termux.sh` file for installing `mosh` need to set the row
```bash
bash "android/termux/mosh/install-mosh.sh"
```

##### nmap
To configure `android-termux.sh` file for installing `nmap` need to set the row
```bash
bash "android/termux/nmap/install-nmap.sh"
```

##### nodejs
To configure `android-termux.sh` file for installing `nodejs` need to set the row
```bash
bash "android/termux/nodejs/install-nodejs.sh"
```

##### readline
To configure `android-termux.sh` file for setting `~/.inputrc` file need to set the row
```bash
bash "android/termux/readline/set-inputrc.sh"
```

##### ruby
To configure `android-termux.sh` file for installing `ruby` need to set the row
```bash
bash "android/termux/ruby/install-ruby.sh" ADDITIONAL_GEMS
```

###### Optional arguments:
`ADDITIONAL_GEMS` - example values: `bundler` or `bundler rails`, ...

##### sqlite
To configure `android-termux.sh` file for installing `sqlite` need to set the row
```bash
bash "android/termux/sqlite/install-sqlite.sh"
```

##### ssh
To configure `android-termux.sh` file for installing `openssh` need to set the row
```bash
bash "android/termux/ssh/install-openssh.sh"
```
To configure `android-termux.sh` to set `change sshd_config` need to set the row
```bash
bash "android/termux/ssh/change-sshd_config.sh" SSH_PORT PASSWORD_AUTHENTICATION
```
To configure `android-termux.sh` to set `authorized_keys` need to set the row
```bash
bash "android/termux/ssh/set-authorized_keys.sh"
```
NOTICE: Add your own `authorized_keys` in the `android/termux/ssh/set-authorized_keys.sh` file!

###### Required arguments:
`SSH_PORT` - example values: `22` or `2222`, ...

`PASSWORD_AUTHENTICATION` - example values: `yes` or `no`

##### the_silver_searcher
To configure `android-termux.sh` file for installing `the_silver_searcher` need to set the row
```bash
bash "android/termux/the_silver_searcher/install-the_silver_searcher.sh"
```

##### tmux
To configure `android-termux.sh` file for installing `tmux` need to set the row
```bash
bash "android/termux/tmux/install-tmux.sh"
```
To configure `android-termux.sh` file for installing [dottmux](https://github.com/bogdanvlviv/dottmux) need to set the row
```bash
bash "android/termux/tmux/install-dottmux.sh"
```

##### vim
To configure `android-termux.sh` file for installing `vim` need to set the row
```bash
bash "android/termux/vim/install-vim.sh"
```
To configure `android-termux.sh` file for installing [dotvim](https://github.com/bogdanvlviv/dotvim) need to set the row
```bash
bash "android/termux/vim/install-dotvim.sh"
```
To configure `android-termux.sh` file for setting `vim` as default editor need to set the row
```bash
bash "android/termux/vim/set-vim-as-default-editor.sh"
```

##### xterm
To configure `android-termux.sh` file for installing [dotX](https://github.com/bogdanvlviv/dotX) need to set the row
```bash
bash "android/termux/xterm/install-dotX.sh"
```
