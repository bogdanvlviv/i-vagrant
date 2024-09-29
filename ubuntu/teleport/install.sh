source "ubuntu/curl/install.sh"

curl -L https://cdn.teleport.dev/teleport_$1_$(dpkg --print-architecture).deb -o /tmp/teleport_$(dpkg --print-architecture).deb

sudo apt install -y /tmp/teleport_$(dpkg --print-architecture).deb

rm /tmp/teleport_$(dpkg --print-architecture).deb
