#!/bin/sh
cat /home/diamond/bin/ui.conf | rofi -dmenu | sed 's/.*    \+//' | sh
