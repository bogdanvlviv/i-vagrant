#!/usr/bin/env bash

apt update

apt install -y openssh

pkill sshd
sshd
