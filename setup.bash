#!/bin/bash
### BEGIN INIT INFO
# Provides:          raspimouse
# Required-Start:    $local_fs
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: raspimouse
### END INIT INFO

set -e

/sbin/insmod /home/ubuntu/RaspberryPiMouse/src/drivers/rtmouse.ko

sleep 1
chmod 666 /dev/rt*

echo 0 >/dev/rtmotoren0
