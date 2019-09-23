#!/usr/bin/env bash

sed -i "/AUTOSTART=\"none\"/c\AUTOSTART=\"none\"" /etc/default/openvpn

sudo /etc/init.d/ssh restart
