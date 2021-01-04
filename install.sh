#!/bin/bash

DIR="/etc/dcompose"

sudo mkdir -p "$DIR/enabled"
sudo mkdir -p "$DIR/available"
sudo curl -s https://raw.githubusercontent.com/enolgor/dcompose/master/dcompose -o /usr/bin/dcompose
sudo chmod a+x /usr/bin/dcompose
