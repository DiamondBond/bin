#!/bin/bash
i3-msg exit;
killall picom;
sleep 1;
xfwm4 --replace &
xfce4-panel &
sleep 1;
xfdesktop &
notify-send "XFCE Fallback Session Loaded."
