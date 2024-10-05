# Power / Screen Blank: Never
gsettings set org.gnome.desktop.session idle-delay 0

# Power / Automatic Suspend: Off
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type "nothing"
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type "nothing"

# Power / Show Battery Percentage: On
gsettings set org.gnome.desktop.interface show-battery-percentage true

# Appearance / Style: Dark
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"

# Set the default web browser to google-chrome.desktop
# source "ubuntu/google-chrome/set-default-web-browser.sh"

# Search / Files: Off
gsettings set org.gnome.desktop.search-providers disabled "['org.gnome.Nautilus.desktop']"

# Mouse & Touchpad / Scroll Direction: Traditional
gsettings set org.gnome.desktop.peripherals.mouse natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false

# Keyboard / Input Sources
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ua')]"

# Keyboard / Custom Shortcuts / Ctrl+Alt+t=xterm
# source "ubuntu/xterm/create-xterm-keybinding.sh"

# Privacy & Security / Location: Off
gsettings set org.gnome.system.location enabled false

# Privacy & Security / File History: Off
gsettings set org.gnome.desktop.privacy remember-recent-files false

# System / Date & Time / Automatic Time Zone: Off
gsettings set org.gnome.desktop.datetime automatic-timezone false

# Set favorite-apps
gsettings set org.gnome.shell favorite-apps "['debian-xterm.desktop', 'google-chrome.desktop', 'Zoom.desktop', 'org.gnome.Nautilus.desktop']"
