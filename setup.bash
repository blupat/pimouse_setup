#!/bin/bash

set -e

/sbin/insmod /home/ubuntu/RaspberryPiMouse/src/drivers/rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 >/dev/rtmotoren0
