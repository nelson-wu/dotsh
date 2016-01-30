#!/bin/bash
echo "Enter alarm time in format of HH:MM (24 hour)"
read WAKETIME
while [ $(date +%R) != $WAKETIME ]; do
    sleep 10
done
amixer -c 2 set Master 60
mpc repeat on
mpc play
