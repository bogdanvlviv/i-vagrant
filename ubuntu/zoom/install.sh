source "ubuntu/curl/install.sh"

curl -L https://zoom.us/client/$1/zoom_amd64.deb -o /tmp/zoom_amd64.deb

sudo apt install -y /tmp/zoom_amd64.deb

rm /tmp/zoom_amd64.deb
