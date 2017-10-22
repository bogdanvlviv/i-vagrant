#!/usr/bin/env bash

apt update

apt upgrade -y

apt install -y software-properties-common
apt install -y build-essential
apt install -y apt-transport-https
