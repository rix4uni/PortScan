#!/bin/bash

# install some tools
apt install jq -y
go install github.com/ffuf/ffuf/v2@latest
go install -v github.com/rix4uni/unew@latest

# setup
mkdir -p ~/bin
if ! grep -qxF 'export PATH="$HOME/bin/PortScan:$PATH"' ~/.bashrc ; then echo -e '\nexport PATH="$HOME/bin/PortScan:$PATH"' >> ~/.bashrc ; fi