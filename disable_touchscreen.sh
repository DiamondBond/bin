#!/bin/sh
xrandr --output eDP-1 --set "scaling mode" "Full" &
xinput | grep 'ELAN224A' | grep 'pointer' | grep -Po 'id=\d+' | cut -d= -f2 | xargs xinput disable &
