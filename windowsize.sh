#!/bin/sh
cat /home/diamond/bin/windowsize.conf | rofi -dmenu | sed 's/.*    \+//' | sh
