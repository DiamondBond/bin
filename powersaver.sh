#!/bin/sh
cat /home/diamond/bin/powersaver.conf | rofi -dmenu | sed 's/.*    \+//' | sh
