source "ubuntu/curl/install.sh"

curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /tmp/google-chrome-stable_current_amd64.deb

sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
sudo apt install -y -f

rm /tmp/google-chrome-stable_current_amd64.deb
