#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   >&2 echo -e "\n\nThis script must be run as root!\n\n" && exit 1
fi

apt-get update && apt-get install -y dos2unix htop

