#!/bin/bash

# Obtain location code from: https://weather.codes/search
location="CEXX0001"
tmpfile=/tmp/$location.out

# Obtain sunrise and sunset raw data from weather.com
wget -q "https://weather.com/weather/today/l/$location" -O "$tmpfile"

SUNR=$(grep SunriseSunset "$tmpfile" | grep -oE '((1[0-2]|0?[1-9]):([0-5][0-9]) ?([AaPp][Mm]))' | head -1)
SUNS=$(grep SunriseSunset "$tmpfile" | grep -oE '((1[0-2]|0?[1-9]):([0-5][0-9]) ?([AaPp][Mm]))' | tail -1)

sunrise=$(date --date="$SUNR" +%I:%M\ %P)
sunset=$(date --date="$SUNS" +%I:%M\ %P)

# Use $sunrise and $sunset variables to fit your needs. Example:
#echo "Sunrise for location $location: $sunrise"
#echo "Sunset for location $location: $sunset"

#notify-send "$sunrise"
#notify-send "Sunrise: $sunrise"
notify-send "Sunset: $sunset"
