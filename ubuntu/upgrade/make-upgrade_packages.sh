#!/usr/bin/env bash

apt-get update

apt-get upgrade -y

apt-get install -y software-properties-common
apt-get install -y build-essential
apt-get install -y apt-transport-https
