#!/usr/bin/env bash

echo "HandleLidSwitch=ignore" | tee -a /etc/systemd/logind.conf > /dev/null
