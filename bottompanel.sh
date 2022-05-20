#!/bin/bash

# Wait for all panels to load
while [ "$(wmctrl -l | grep -c xfce4-panel)" -lt "2" ];
do
   sleep 0.05s
done

# Determine identifier
ID=$(wmctrl -l | grep xfce4-panel | sed 3p | awk '{ print $1 }' | tail -1)
notify-send `$ID`
# Place panel at desktop-level
wmctrl -i -r $ID -b add,below
notify-send "Panel should be below"
# manual
#wmctrl -a :SELECT: -b add,below
