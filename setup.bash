#!/bin/bash

set -e

/sbin/insmod /home/ubuntu/pimouse_setup/rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 >/dev/rtmotoren0
