#!/usr/bin/env bash

rm ~/.psqlrc

cat <<EOF | tee ~/.psqlrc > /dev/null
\setenv LESS -S
EOF
