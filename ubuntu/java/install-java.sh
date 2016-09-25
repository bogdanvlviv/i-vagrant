#!/usr/bin/env bash

add-apt-repository -y ppa:webupd8team/java

apt-get update

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt-get install -y oracle-java$1-installer
