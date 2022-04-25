#!/bin/bash
cur_ws=$(xdotool get_desktop)
max_ws=$(xdotool get_num_desktops)

# determine destination workspace based on current workspace
if [ "$1" = "up" ] && [ $cur_ws -gt 0 ]; then
    next_ws=$((cur_ws-1))        
elif [ "$1" = "down" ] && [ $cur_ws -lt $max_ws ]; then
    next_ws=$((cur_ws+1))
else 
    exit 0
fi

source_win=$(wmctrl -l | grep -oE "[0-9a-f]x[0-9a-f]+\s+$cur_ws" | cut -f1 -d" ")
target_win=$(wmctrl -l | grep -oE "[0-9a-f]x[0-9a-f]+\s+$next_ws" | cut -f1 -d" ")

# push each window from current to next ws
for win in $source_win; do
    wmctrl -i -r "$win" -t "$next_ws"
done

# pull each window from next ws to current
for win in $target_win; do
    wmctrl -i -r "$win" -t "$cur_ws"
done

# go to target workspace
wmctrl -s $next_ws
