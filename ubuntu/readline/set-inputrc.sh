#!/usr/bin/env bash

rm ~/.inputrc

echo "set editing-mode vi" | tee ~/.inputrc > /dev/null
