#!/bin/bash
# http://www.howtogeek.com/167195/how-to-change-your-raspberry-pi-or-other-linux-devices-hostname/

# An one-liner:
# curl -s https://raw.githubusercontent.com/nikonyrh/raspberry-scripts/master/setHostname.sh | sudo bash -s new-hostname-here

if [[ $EUID -ne 0 ]]; then
   >&2 echo -e "\n\nThis script must be run as root!\n\n" && exit 1
fi

if [ "$1" == "" ]; then
    >&2 echo "Usage: $0 hostname" && exit 1
fi

sed -i -r "s/(127.0.1.1[ \t]+).+/\1 $1/" /etc/hosts
echo $1 > /etc/hostname

/etc/init.d/hostname.sh && reboot
