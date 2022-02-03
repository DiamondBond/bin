#!/bin/sh
cat /home/diamond/bin/borders.conf | rofi -dmenu | sed 's/.*    \+//' | sh
