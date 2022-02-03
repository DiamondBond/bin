#!/bin/sh
cat /home/diamond/bin/powerprofiles.conf | rofi -dmenu | sed 's/.*    \+//' | sh
