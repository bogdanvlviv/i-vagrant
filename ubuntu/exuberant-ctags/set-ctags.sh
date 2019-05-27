#!/usr/bin/env bash

cat <<EOF | tee ~/.ctags > /dev/null
--exclude=node_modules
EOF
