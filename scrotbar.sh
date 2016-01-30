#!/bin/sh
RC="$HOME/.conkyrc"
FG="#bababa"
BG="#1b1b1b"
ALIGN="right"
WIDTH="1150"
HEIGHT="9"
FONT="-*-cure-medium-*-*-*-13-*-*-*-*-*-*-*"
XPOS="215" 
YPOS="2"

exec conky -d -c $RC | dzen2 -fg $FG -bg $BG -ta $ALIGN -w $WIDTH -h $HEIGHT -x $XPOS -y $YPOS -fn $FONT &
exit 0
