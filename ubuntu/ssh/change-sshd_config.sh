#!/usr/bin/env bash

sed -i "/Port/c\Port $1" /etc/ssh/sshd_config

sed -i "/PasswordAuthentication yes/c\PasswordAuthentication $2" /etc/ssh/sshd_config
sed -i "/PasswordAuthentication no/c\PasswordAuthentication $2" /etc/ssh/sshd_config

sed -i "1iGatewayPorts clientspecified\n" /etc/ssh/sshd_config

sudo /etc/init.d/ssh restart
