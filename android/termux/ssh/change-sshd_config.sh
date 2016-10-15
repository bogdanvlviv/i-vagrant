#!/usr/bin/env bash

echo "GatewayPorts clientspecified" | tee -a ~/../usr/etc/ssh/sshd_config > /dev/null

sed -i "/PasswordAuthentication yes/c\PasswordAuthentication $2" ~/../usr/etc/ssh/sshd_config
sed -i "/PasswordAuthentication no/c\PasswordAuthentication $2" ~/../usr/etc/ssh/sshd_config

echo "Port $1" | tee -a ~/../usr/etc/ssh/sshd_config > /dev/null

pkill sshd
sshd
