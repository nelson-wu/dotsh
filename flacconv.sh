#!/bin/bash
# If script is converting entire folder
# make sure that there are no flac files in
# music directory
homedir="/home/fujiko"
MUSICDIR="$homedir/Music/"
OUTPUTDIR="$homedir/Desktop/mp3/"
find $MUSICDIR -name '*.flac' -follow -printf '%h\n' | sort -u | while read a; do
b=$(basename "$a")
[ ! -d "$OUTPUTDIR$b (V0)" ] && $homedir/bin/whatmp3 --V0 -o $OUTPUTDIR "$a" 
# whatmp3 --V0 -o $OUTPUTDIR "$a" 
done
