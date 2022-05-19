#!/bin/bash
# get id of emacs
win=$(xdotool search --onlyvisible --class emacs | head -1)

launch() {
    echo setsid nohup "$*" &
    setsid nohup "$*" &
}

launchcmd="emacsclient -c -n -a 'emacs'"


if [ "x$win" = x ]; then
    # start Emacs
    #launch $launchcmd
    exec /usr/local/bin/emacsclient -c -n -a 'emacs' &
else
    # Emacs is already running...
    if [ $win = $(xdotool getwindowfocus) ]; then
        # ...and focused
        # do nothing
        sleep 0.2;
    else
        # switch to it
        xdotool windowactivate $win
    fi
fi