#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

rm /tmp/graphiql
curl -L https://github.com/skevy/graphiql-app/releases/download/v$1/graphiql-app-$1-x86_64.AppImage -o /tmp/graphiql
sudo cp /tmp/graphiql /usr/local/bin/graphiql
sudo chmod 755 /usr/local/bin/graphiql
rm /tmp/graphiql
