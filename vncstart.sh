#!/bin/bash
x11vnc -nap -wait 50 -noxdamage -display :0 -forever -o /var/log/x11vnc.log -bg -localhost
