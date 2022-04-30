#!/bin/bash
interval=0.5
id=$(xdotool search --name "Windows 10 LTSC on QEMU/KVM")
#echo $id
xdotool windowactivate $id
#xdotool key alt+Tab
sleep $interval
xdotool key ctrl+a
sleep $interval
xdotool key BackSpace
sleep $interval
xdotool key ctrl+v
sleep $interval
xdotool key ctrl+s
sleep $interval
xdotool key F11
