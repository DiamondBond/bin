#!/bin/bash
SEARCH="Touchpad"

if [ "$SEARCH" = "" ]; then
    exit 1
fi

ids=$(xinput --list | grep Touchpad | awk -v search="$SEARCH" \
    '$0 ~ search {match($0, /id=[0-9]+/);\
                  if (RSTART) \
                    print substr($0, RSTART+3, RLENGTH-3)\
                 }'\
     )

for i in $ids
do
    xinput set-prop $i 'libinput Disable While Typing Enabled' 1
done
