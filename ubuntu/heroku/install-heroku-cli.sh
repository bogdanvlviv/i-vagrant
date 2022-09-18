#!/usr/bin/env bash

bash "ubuntu/curl/install-curl.sh"

curl -o- https://cli-assets.heroku.com/install-ubuntu.sh | bash
