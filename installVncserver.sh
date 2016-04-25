#!/bin/bash
# https://www.raspberrypi.org/documentation/remote-access/vnc/
# Personally I use this only for setting the WiFi password

if [[ $EUID -ne 0 ]]; then
   >&2 echo -e "\n\nThis script must be run as root!\n\n" && exit 1
fi

apt-get update && apt-get install -y tightvncserver
vncserver :1 -geometry 1280x720 -depth 24 # asks for password
service lightdm stop # we don't need the original X-session
