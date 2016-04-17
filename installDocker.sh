#!/bin/bash
# https://sreeninet.wordpress.com/2016/02/21/docker-on-raspberry-pi/

curl -sSL http://downloads.hypriot.com/docker-hypriot_1.10.1-1_armhf.deb >/tmp/docker-hypriot_1.10.1-1_armhf.deb
sudo dpkg -i /tmp/docker-hypriot_1.10.1-1_armhf.deb
rm -f /tmp/docker-hypriot_1.10.1-1_armhf.deb
sudo usermod -aG docker pi
sudo systemctl enable docker.service
