#!/bin/bash
# =====================
# DWM AUTOSTART SCRIPT
# =====================

set -euo pipefail

# X11
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources & # Merge Xresources
xset b off & # Disables bell
xset -dpms & # Disables Energy Star features
xset s off & # Disables screen saver

# Exports
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export XDG_SESSION_TYPE=X11
export GDK_BACKEND=x11
#export QT_QPA_PLATFORM=xcb
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1
export NO_AT_BRIDGE=1

# Display
xinput | grep 'ELAN224A' | grep 'pointer' | grep -Po 'id=\d+' | cut -d= -f2 | xargs xinput disable &
xrandr --output eDP-1 --set "scaling mode" "Full" &

# Gestures
if pgrep -f 'libinput-gestures' > /dev/null
then
	echo "libinput-gestures running, everything is fine"
else
	echo "launching libinput-gestures"
	libinput-gestures &
fi

# MPD
if pgrep 'mpd' > /dev/null
then
	echo "mpd running, everything is fine"
else
	echo "launching mpd"
	mpd &
fi

# Emacs
if pgrep 'emacs' > /dev/null
then
	echo "emacs running, everything is fine"
else
	echo "launching emacs"
	emacs --daemon
fi

# Disable mouse acceleration
source /home/diamond/bin/kmaccel

# Make Caps an additional Escape
setxkbmap -option caps:escape &

# If the .xsession-errors file is not a symbolic link, delete it and create it as such
# if [ ! -h $HOME/.xsession-errors ]; then
#  /bin/rm $HOME/.xsession-errors
#  ln -s /dev/null $HOME/.xsession-errors
# fi
