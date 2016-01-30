#!/bin/bash
mpc --format '%time%' playlist | awk -F ':' 'BEGIN{t=0} {t+=$1*60+$2} END{print strftime("%j %H:%M:%S", t, 1)}'
