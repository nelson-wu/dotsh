#!/bin/bash
# USAGE:
# mpdalarm.sh [ alarm_time (HH:MM) ] [ album_name ]
# mpdalarm.sh [ alarm_time (HH:MM) ]
if [ $(date -d $1 |& grep -c invalid) != "0" ]
then
    echo "Invalid time format."
    echo "mpdalarm.sh [ alarm_time (HH:MM) ] [ album_name ]"
    echo "mpdalarm.sh [ alarm_time (HH:MM) ]"
    exit 1
fi
if [ $(mpc playlist | wc -l) == 0 ] 
then
    if [ $(mpc search album $2 | wc -l) == 0 ]
    then
        echo "Playlist is empty and specified album not found."
        exit 1
    fi
fi
while [ $(date +%R) != $1 ]; do
    sleep 10
done
mpc repeat on
mpc play
