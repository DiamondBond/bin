#!/bin/bash

# Info about some states are available here:
# https://www.freedesktop.org/software/systemd/man/systemd-sleep.conf.html#Description
chosen=$(echo -e "[Cancel]\nShow Desktop\nHide Desktop\nDesktop Preferences" | rofi -dmenu -i)

if [[ $chosen = "Show Desktop" ]]; then
	bash /home/diamond/bin/desktop1
elif [[ $chosen = "Hide Desktop" ]]; then
	bash /home/diamond/bin/desktop0
elif [[ $chosen = "Desktop Preferences" ]]; then
	pcmanfm --desktop-pref
fi
