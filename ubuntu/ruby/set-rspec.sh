#!/usr/bin/env bash

cat <<EOF | tee ~/.rspec > /dev/null
--format documentation
EOF
