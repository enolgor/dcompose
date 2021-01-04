#!/bin/bash

if [ ! $(whoami) = "root" ]; then
  exec sudo "$0" "$@"
  echo "Error: failed to execute sudo" >&2
  exit 1
fi

DIR="/etc/dcompose"

mkdir -p "$DIR/enabled"
mkdir -p "$DIR/available"
curl -s https://raw.githubusercontent.com/enolgor/dcompose/master/dcompose -o /usr/bin/dcompose
chmod a+x /usr/bin/dcompose
cd $DIR
if [ ! -f on_enable ]; then
cat > on_enable <<- EOM
echo "Enabled \$1"
EOM
chmod +x on_enable
fi
if [ ! -f on_disable ]; then
cat > on_disable <<- EOM
echo "Disabled \$1"
EOM
chmod +x on_disable
fi
