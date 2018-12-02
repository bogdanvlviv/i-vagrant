#!/usr/bin/env bash

sed -i "1iexport PATH=\"\$GOPATH/bin:\$PATH\"\n" ~/.bashrc
sed -i "1iexport PATH=\"/usr/local/go/bin:\$PATH\"" ~/.bashrc
sed -i "1iexport GOPATH=\"\$HOME/.go\"" ~/.bashrc
