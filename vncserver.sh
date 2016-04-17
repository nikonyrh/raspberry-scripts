#!/bin/bash
# https://www.raspberrypi.org/documentation/remote-access/vnc/

apt-get install tightvncserver
tightvncserver # set passwords
vncserver :1 -geometry 1280x720 -depth 24
service lightdm stop
