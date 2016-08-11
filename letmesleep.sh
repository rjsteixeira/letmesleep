#!/bin/bash

# This script sets the wakeup toggle to disabled on a given PRODID
# This stops the device from being able to wakeup the computer from sleep.
# I did this so that my mouse didn't wake my laptop when it was in my bag.
#
# find the idProduct of your device and change the PRODID var.
# Set executable and put the script in /lib/systemd/system-sleep

PRODID="07b2"
PRODID_PATH=`grep $PRODID -l /sys/bus/usb/devices/*/idProduct`



if [ "$PRODID_PATH" ]; then
    #echo "$PRODID_PATH is not empty"
    PROD=`echo $PRODID_PATH | awk 'BEGIN { FS = "/" } ; { print $6 }'`
    #echo $PROD
    cat /sys/bus/usb/devices/$PROD/power/wakeup
    echo "disabled" > /sys/bus/usb/devices/$PROD/power/wakeup
    cat /sys/bus/usb/devices/$PROD/power/wakeup
fi
