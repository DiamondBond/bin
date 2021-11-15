#!/bin/sh
cat /home/diamond/bin/theme_switcher.conf | rofi -dmenu | sed 's/.*    \+//' | sh
