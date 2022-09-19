#!/usr/bin/env bash

source "ubuntu/curl/install-curl.sh"

source "ubuntu/jq/install-jq.sh"

sudo apt update

sudo apt install -y unzip

source $HOME/.asdf/asdf.sh
source $HOME/.asdf/completions/asdf.bash

asdf plugin-add java https://github.com/halcyon/asdf-java.git
asdf plugin update java
asdf install java $1
asdf global java $1
