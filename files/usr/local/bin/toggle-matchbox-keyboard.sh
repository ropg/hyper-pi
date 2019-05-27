#!/bin/bash
#This script toggles the virtual keyboard

PID=`pidof matchbox-keyboard`
if [ ! -e $PID ]; then
  killall matchbox-keyboard
else
  MB_KBD_CONFIG=/usr/local/share/matchbox-keyboard/keyboard-pi.xml matchbox-keyboard -g 250 -s 13 -c 0 -r 0 -t &
fi

