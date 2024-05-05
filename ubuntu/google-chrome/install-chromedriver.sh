source "ubuntu/curl/install.sh"

sudo apt update

sudo apt install -y unzip

curl -L https://storage.googleapis.com/chrome-for-testing-public/$1/linux64/chromedriver-linux64.zip -o /tmp/chromedriver-linux64.zip
unzip /tmp/chromedriver-linux64.zip -d /tmp/chromedriver-linux64
sudo cp /tmp/chromedriver-linux64/chromedriver-linux64/chromedriver /usr/local/bin/chromedriver
sudo chmod 755 /usr/local/bin/chromedriver
rm /tmp/chromedriver-linux64.zip
rm -fr /tmp/chromedriver-linux64
