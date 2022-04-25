#!/usr/bin/env bash

# desktop index starts from 0, eg; target=0 => desktop 1, target=3 => desktop 4
target=3
while read i; do wmctrl -i -t "$target" -r "$i"  ; done  < <(wmctrl -l | awk -v var=$(xdotool get_desktop) '{if ($2 == var) print $0;}' | cut -d' '  -f1)

# DOCUMENTATION
#wmctrl -l | awk -v var=$(xdotool get_desktop) '{if ($2 == var) print $0;}' | cut -d' '  -f1

#List all windows, filter out those that aren't on the current workspace, and extract their window ID

#wmctrl -i -t 2 -r "$i"

#Move window with window ID $i to workspace 2.
