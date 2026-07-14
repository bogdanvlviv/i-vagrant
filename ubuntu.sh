set -e

sudo bash -c ""

echo "Are you ready to set up Ubuntu 26.04?"
echo -n "Type 'yes' or the operation will be cancelled: "
read i_vagrant_ready_to_set_up_ubuntu
if [[ "$i_vagrant_ready_to_set_up_ubuntu" != "yes" ]]; then
  echo ""
  echo "Cancelled!"
  echo ""
  exit 1
fi

echo "======== Setting up Ubuntu 26.04 ========"

echo "======== upgrade ========"
source "ubuntu/upgrade/packages.sh"
source "ubuntu/upgrade/snap.sh"

echo "======== bashrc ========"
source "ubuntu/bashrc/set-lc_all-variable.sh"

echo "======== desktop-settings ========"
source "ubuntu/desktop-settings/set.sh"

echo "======== mise ========"
source "ubuntu/mise/install.sh"

echo "======== dell-precision-5490 ========"
# https://wiki.ubuntu.com/IntelMIPICamera
# sudo apt install ubuntu-oem-keyring
# Check whether http://dell.archive.canonical.com/dists/resolute-somerville-oricorio/ is available
# and try resolute codename first.
# sudo add-apt-repository "deb http://dell.archive.canonical.com/ noble somerville"
# ubuntu-drivers list
# sudo ubuntu-drivers install
# reboot
# sudo rm /etc/apt/sources.list.d/archive_uri-http_dell_archive_canonical_com_-resolute.list

echo "======== curl ========"
source "ubuntu/curl/install.sh"

echo "======== docker ========"
source "ubuntu/docker/install.sh"
source "ubuntu/docker/add-user-to-docker-group.sh"
source "ubuntu/docker/install-docker-compose.sh" v5.3.1

echo "======== exuberant-ctags ========"
source "ubuntu/exuberant-ctags/install.sh"
source "ubuntu/exuberant-ctags/set-ctags-file.sh"

echo "======== ffmpeg ========"
source "ubuntu/ffmpeg/install.sh"

echo "======== flatpak ========"
source "ubuntu/flatpak/install.sh"

echo "======== fzf ========"
source "ubuntu/fzf/install.sh"
source "ubuntu/fzf/set-fzf_default_command-variable.sh"

echo "======== gimp ========"
source "ubuntu/gimp/install.sh"

echo "======== git ========"
source "ubuntu/git/install.sh"
source "ubuntu/git/install-diff-highlight.sh"

echo "======== go ========"
source "ubuntu/go/mise-install-go.sh" 1.26.5

echo "======== google-chrome ========"
source "ubuntu/google-chrome/install.sh"
source "ubuntu/google-chrome/set-default-web-browser.sh"
source "ubuntu/google-chrome/install-chromedriver.sh" 150.0.7871.114

echo "======== graphviz ========"
# Unused?
# source "ubuntu/graphviz/install.sh"

echo "======== htop ========"
source "ubuntu/htop/install.sh"

echo "======== imagemagick ========"
# Unused?
# source "ubuntu/imagemagick/install.sh"

echo "======== jq ========"
# Unused?
# source "ubuntu/jq/install.sh"

echo "======== kdenlive ========"
source "ubuntu/kdenlive/install.sh"

echo "======== libvips ========"
# Unused?
# source "ubuntu/libvips/install.sh"

echo "======== libxml2 ========"
# Unused?
# source "ubuntu/libxml2/install.sh"

echo "======== memcached ========"
# Unused?
# source "ubuntu/memcached/install.sh"

echo "======== mupdf ========"
# Unused?
# source "ubuntu/mupdf/install.sh"

echo "======== nmap ========"
source "ubuntu/nmap/install.sh"

echo "======== nodejs ========"
source "ubuntu/nodejs/mise-install-node.sh" 24.18.0
source "ubuntu/nodejs/mise-install-yarn.sh" 1.22.22

echo "======== obs-studio ========"
source "ubuntu/obs-studio/install.sh"

echo "======== openvpn ========"
source "ubuntu/openvpn/install.sh"
source "ubuntu/openvpn/change-openvpn-file.sh"

echo "======== poppler ========"
# Unused?
# source "ubuntu/poppler/install.sh"

echo "======== postgresql ========"
source "ubuntu/postgresql/mise-install-postgres.sh" 18.4
source "ubuntu/postgresql/set-psqlrc-file.sh"

echo "======== python ========"
source "ubuntu/python/mise-install-python.sh" 3.14.6

echo "======== rar ========"
# Unused?
# source "ubuntu/rar/install.sh"

echo "======== readline ========"
source "ubuntu/readline/set-inputrc-file.sh"

echo "======== redis ========"
# Unused?
# Deprecated in favor of valkey.
# source "ubuntu/redis/mise-install-redis.sh" 7.2

echo "======== ruby ========"
source "ubuntu/ruby/mise-install-ruby.sh" 4.0.6 debug rubocop "tmuxinator:3.4.1"
source "ubuntu/ruby/set-rspec-file.sh"
# Unused?
# source "ubuntu/ruby/install-rbspy.sh" v0.49.0

echo "======== sqlite ========"
source "ubuntu/sqlite/mise-install-sqlite.sh" 3.53.3

echo "======== ssh ========"
source "ubuntu/ssh/install-openssh-client.sh"
source "ubuntu/ssh/install-openssh-server.sh"
source "ubuntu/ssh/change-sshd_config-file.sh"
source "ubuntu/ssh/set-authorized_keys-file.sh"

echo "======== the_silver_searcher ========"
source "ubuntu/the_silver_searcher/install.sh"

echo "======== tmux ========"
source "ubuntu/tmux/install.sh" 3.7b
source "ubuntu/tmux/install-dottmux.sh"

echo "======== usb-creator-gtk ========"
source "ubuntu/usb-creator-gtk/install.sh"

echo "======== valkey ========"
# Unused?
# source "ubuntu/valkey/mise-install-valkey.sh" 9.1.0

echo "======== vim ========"
source "ubuntu/vim/install.sh"
source "ubuntu/vim/install-dotvim.sh"
source "ubuntu/vim/set-editor-variable.sh"

echo "======== xclip ========"
source "ubuntu/xclip/install.sh"
source "ubuntu/xclip/create-xclip-shortcuts.sh"

echo "======== xterm ========"
source "ubuntu/xterm/install.sh"
source "ubuntu/xterm/create-xterm-keybinding.sh"
source "ubuntu/xterm/install-dotX.sh"

echo "======== yubikey-manager ========"
source "ubuntu/yubikey-manager/install.sh"

echo "======== zoom ========"
source "ubuntu/zoom/install.sh" 7.1.0.3715

echo "======== source \"\$HOME/.bashrc\" ========"
source "$HOME/.bashrc"

echo "======== Ubuntu 26.04 setup has been completed ========"
