source "ubuntu/curl/install.sh"

curl -L https://zoom.us/client/$1/zoom_$(dpkg --print-architecture).deb -o /tmp/zoom_$(dpkg --print-architecture).deb

sudo apt install -y /tmp/zoom_$(dpkg --print-architecture).deb

rm /tmp/zoom_$(dpkg --print-architecture).deb
