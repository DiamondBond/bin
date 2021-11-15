#!/bin/sh
cat /home/diamond/bin/launcher.conf | rofi -dmenu | sed 's/.*    \+//' | sh
