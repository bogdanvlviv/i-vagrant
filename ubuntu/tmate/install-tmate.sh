#!/usr/bin/env bash

apt update

apt install -y software-properties-common

add-apt-repository -y ppa:tmate.io/archive

apt update

apt install -y tmate
