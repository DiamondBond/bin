#!/bin/bash
#xfconf-query -c xfwm4 -p /general/use_compositing -s true
#xinput --set-prop 12 'libinput Disable While Typing Enabled' 0
sh -c ~/bin/disable_touchpad_typing.sh
#rm -rf ~/games/turtle_client_116/WDB
