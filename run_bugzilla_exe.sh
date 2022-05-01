#!/bin/bash
interval=0.5

# adjust compile time according to plugged in / battery state
# compile on battery ~= 2-3s
# compile on plugged ~= 1-2s
var=$(cat /sys/class/power_supply/BAT0/status)
var2="Charging"
if [[ "$var" == "$var2" ]]
then
	waitforcompile=2
else
	waitforcompile=5
fi

# grab qemu window and start operating on it
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
sleep $interval
xdotool type 'powershell.exe -noexit C:\Users\Diamond\Desktop\zrun.ps1'
sleep $interval
xdotool key Enter
