#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   >&2 echo -e "\n\nThis script must be run as root!\n\n" && exit 1
fi

# https://packagecloud.io/Hypriot/Schatzkiste/packages/debian/wheezy/docker-hypriot_1.11.1-1_armhf.deb
curl -s https://packagecloud.io/install/repositories/Hypriot/Schatzkiste/script.deb.sh.deb | bash
apt-get install docker-hypriot=1.11.1-1
usermod -aG docker pi

