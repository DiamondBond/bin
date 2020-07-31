#!/bin/bash
win=`xdotool getactivewindow`
w=`xwininfo -id $win | grep "Width" | awk '{print $2}'`
h=`xwininfo -id $win | grep "Height" | awk '{print $2}'`

xdotool windowsize $win $w $h

exit 0
