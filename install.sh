#!/bin/bash

DIR="/etc/dcompose"

sudo mkdir -p "$DIR/enabled"
sudo mkdir -p "$DIR/available"
sudo curl -s https://raw.githubusercontent.com/enolgor/dcompose/master/dcompose -o /usr/bin/dcompose
sudo chmod a+x /usr/bin/dcompose
if [ ! -f on_enable ]; then
cat > on_enable <<- EOM
echo "Enabled $1"
EOM
fi
if [ ! -f on_disable ]; then
cat > on_enable <<- EOM
echo "Disabled $1"
EOM
fi
