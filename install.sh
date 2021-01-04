#!/bin/bash

DIR="/etc/dcompose"

sudo mkdir -p "$DIR/enabled"
sudo mkdir -p "$DIR/available"
sudo curl -s https://raw.githubusercontent.com/enolgor/dcompose/master/dcompose -o /usr/bin/dcompose
sudo chmod a+x /usr/bin/dcompose
cd $DIR
if [ ! -f on_enable ]; then
sudo cat > on_enable <<- EOM
echo "Enabled $1"
EOM
sudo chmod +x on_enable
fi
if [ ! -f on_disable ]; then
sudo cat > on_disable <<- EOM
echo "Disabled $1"
sudo chmod +x on_disable
EOM
fi
