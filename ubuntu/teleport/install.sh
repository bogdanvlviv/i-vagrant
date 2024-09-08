source "ubuntu/curl/install.sh"

curl -L https://cdn.teleport.dev/teleport_$1_amd64.deb -o /tmp/teleport_amd64.deb

sudo apt install -y /tmp/teleport_amd64.deb

rm /tmp/teleport_amd64.deb
