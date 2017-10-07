#!/usr/bin/env bash

rm ~/.inputrc

cat <<EOF | tee ~/.inputrc > /dev/null
set editing-mode vi
EOF
