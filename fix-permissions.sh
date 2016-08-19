#!/bin/bash
#
# Usage: ./fix-permissions username
#
# This script simply changes ownership of all the files to
# the user you wish and makes sure the needed files are executable.
# It is laid out like it is to be easy to read by a human and
# easily edited as needed to update.

if [ -z "$1" ]
  then
    echo "Please supply a username"
    echo "./fix-permissions username"
    exit 1
fi

chown -R $1:$1 ../i2pbrowserlin
chmod +x ./.Start-Browser-Only 
chmod +x ./I2PBrowser.desktop
chmod +x ./App/I2PBrowser/execdesktop
chmod +x ./App/I2PBrowser/run-mozilla.sh
chmod +x ./App/I2PBrowser/start-i2p-browser

