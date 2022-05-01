#!/bin/bash
interval=0.5
waitforcompile=5
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
xdotool key F9
sleep $waitforcompile
# xdotool key Super+d
# sleep $interval
# xdotool key z
# sleep $interval
# xdotool key 'Menu'
# sleep $interval
# xdotool key Down
# sleep $interval
# xdotool key Down
# sleep $interval
# xdotool key Enter
xdotool key Super+r
xdotool type 'powershell.exe -noexit C:\Users\Diamond\Desktop\zrun.ps1'
xdotool key Enter
