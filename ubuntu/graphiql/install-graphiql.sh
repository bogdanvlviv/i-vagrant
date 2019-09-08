#!/usr/bin/env bash

apt update

# "ubuntu/curl/install-curl.sh"
apt install -y curl
# "ubuntu/curl/install-curl.sh"

rm /tmp/graphiql
curl -L https://github.com/skevy/graphiql-app/releases/download/v$1/graphiql-app-$1-x86_64.AppImage -o /tmp/graphiql
cp /tmp/graphiql /usr/local/bin/graphiql
chmod 755 /usr/local/bin/graphiql
rm /tmp/graphiql
