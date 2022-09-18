#!/usr/bin/env bash

cat <<EOF | tee ~/.psqlrc > /dev/null
\setenv LESS -S
EOF
