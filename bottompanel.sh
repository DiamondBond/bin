#!/bin/bash

# Wait for all panels to load
#while [ "$(wmctrl -l | grep -c xfce4-panel)" -lt "2" ];
#do
#   sleep 0.05s
#done

# Just wait 5s for panel to load
sleep 5;

# Determine identifier
ID=$(wmctrl -l | grep xfce4-panel | sed 3p | awk '{ print $1 }' | tail -1)

# Place panel at desktop-level
wmctrl -i -r $ID -b add,below
