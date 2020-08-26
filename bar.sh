#!/bin/bash

#BACKGROUND="#282A36"
#BACKGROUND="#0c0e14"
#FOREGROUND="#fbfffe"
BACKGROUND="#000000"
FOREGROUND="#eeeeee"

while true; do
    TIME=$(date "+%a %I:%M %P")
    #BATPERC=$(acpi --battery | cut -d " " -f4 | cut -d "%" -f1)
    BATT=$(cat /sys/class/power_supply/BAT1/capacity)
	BATTSTAT=$(cat /sys/class/power_supply/BAT1/status)
    #SONG=$(spotifycli --status)
    SONG=$(mpc status | grep -m1 "")
    #WIFI="%{A:x-terminal-emulator nmtui-connect:}\uf1eb%{A}"

    SPEAKERS_PERCENT=$(pactl list sinks | grep "Volume:" | cut -d '%' -f1 | head -n 1 | cut -d '/' -f2 | xargs)

    SPEAKERS="%{A:pavucontrol -t 3 & disown:}$SPEAKERS_PERCENT%{A}"

    # choose battery icon according to percentage
    #if [ $BATPERC -gt 90 ]; then
    #    BATICON="\uf240"
    #elif [ $BATPERC -gt 75 ]; then
    #    BATICON="\uf241"
    #elif [ $BATPERC -gt 40 ]; then
    #    BATICON="\uf242"
    #elif [ $BATPERC -gt 25 ]; then
    #    BATICON="\uf243"
    #else
    #    BATICON="\uf244"
    #fi

    # display music if spotify is playing
    if [ ! -z "$SONG" ]; then
        MUSIC="%{A:spotifycli --playpause:}$SONG%{A}"
    else
        MUSIC=""
    fi

    #echo -e "%{Sl}%{l B$BACKGROUND F$FOREGROUND}   $MUSIC%{c}\uf017 $TIME%{r}$SPEAKERS%$ISMUTED   %{B$BACKGROUND}"
    echo -e "%{Sl}%{l B$BACKGROUND F$FOREGROUND}   $MUSIC%{c}\uf017 $TIME%{r}$BATTSTAT $BATT  %{B$BACKGROUND}"
    sleep 0.5s
done
