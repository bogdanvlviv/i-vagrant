#!/usr/bin/env bash

apt update

apt install -y software-properties-common

add-apt-repository -y ppa:webupd8team/java

apt update

echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt install -y oracle-java$1-installer
