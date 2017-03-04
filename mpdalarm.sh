#!/bin/bash
# USAGE:
# mpdalarm.sh [ alarm_time (HH:MM) ] [ album_name ]
# mpdalarm.sh [ alarm_time (HH:MM) ]
if [ $(date -d $1 |& grep -c invalid) != "0" ] || [ $# -eq 0 ]
then
    echo "Invalid time format."
    echo "mpdalarm.sh [ alarm_time (HH:MM) ] [ album_name ]"
    echo "mpdalarm.sh [ alarm_time (HH:MM) ]"
    exit 1
fi

if  [ $# -eq 2 ] && [  $( mpc search album $2 | wc -l ) -eq 0 ]
then
    echo "Specified album not found."
    exit 1
fi

while [ $(date +%R) != $1 ]; do
    sleep 10
done

if [ $# -eq 2 ]
then
    mpc search album $2 | mpc add
else
    mpc listall | shuf -n 5 | mpc add
fi

mpc repeat on
mpc single off
mpc play
