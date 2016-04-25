#!/bin/bash
# https://sreeninet.wordpress.com/2016/02/21/docker-on-raspberry-pi/

if [[ $EUID -ne 0 ]]; then
   >&2 echo -e "\n\nThis script must be run as root!\n\n" && exit 1
fi

VER=1.10.1-1
FNAME="/tmp/docker-hypriot_$VER_armhf.deb"
curl -sSL "http://downloads.hypriot.com/docker-hypriot_$VER_armhf.deb" > $FNAME
dpkg -i $FNAME
rm -f $FNAME
usermod -aG docker pi
systemctl enable docker.service
