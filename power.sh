#!/bin/bash

# Info about some states are available here:
# https://www.freedesktop.org/software/systemd/man/systemd-sleep.conf.html#Description
chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\n" | rofi -dmenu -i)

if [[ $chosen = "Logout" ]]; then
	openbox --exit
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend
elif [[ $chosen = "Hibernate" ]]; then
	systemctl hibernate
fi
