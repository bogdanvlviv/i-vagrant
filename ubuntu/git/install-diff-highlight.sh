#!/usr/bin/env bash

apt install -y build-essential

make -C /usr/share/doc/git/contrib/diff-highlight

cp /usr/share/doc/git/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight
chmod 755 /usr/local/bin/diff-highlight
