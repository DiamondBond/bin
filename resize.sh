#!/bin/bash
win=`xdotool getactivewindow`
w=`xwininfo -id $win | grep "Width" | awk '{print $2}'`
h=`xwininfo -id $win | grep "Height" | awk '{print $2}'`
width=$((w + 100))
height=$(($h + 100))

xdotool windowsize $win $w $h
echo $width
echo $height

exit 0
