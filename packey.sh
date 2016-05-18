#!/bin/bash
# Run this as sudo
pacman-key -r $1
pacman-key -f $1
pacman-key --lsign-key $1
