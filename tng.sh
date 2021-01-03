#!/bin/sh
#cat /home/diamond/bin/apps.conf | dmenu -l 30 | sed 's/.*    \+//' | sh
cat /home/diamond/bin/tng.conf | rofi -dmenu | sed 's/.*    \+//' | sh
