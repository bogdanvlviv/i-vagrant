#!/usr/bin/env bash

echo "Port $1" | tee -a ~/../usr/etc/ssh/sshd_config > /dev/null

sed -i "/PasswordAuthentication yes/c\PasswordAuthentication $2" ~/../usr/etc/ssh/sshd_config
sed -i "/PasswordAuthentication no/c\PasswordAuthentication $2" ~/../usr/etc/ssh/sshd_config

sed -i "1iGatewayPorts clientspecified\n" ~/../usr/etc/ssh/sshd_config

pkill sshd
sshd
