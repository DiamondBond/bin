#!/bin/bash

# execute general autostart
/home/diamond/bin/autostart &

# start compositor & set bg
picom &
hsetroot -solid "#808080" &

# set root msg (dwm status line)
while true; do
    xsetroot -name "$(/home/diamond/bin/cputemp) | $(/home/diamond/bin/battery) | $(date +%I:%M) $(date +%p)"
    sleep 10
done &

# start xfce stuff
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
xfsettingsd &
xfce4-power-manager &

# start daemons
nm-applet &
blueman-applet &
pasystray &
light-locker &
xbindkeys &

# start services
dropbox start -i &

# start dwm
exec dwm
