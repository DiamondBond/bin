#!/bin/bash
#light-locker-command -l
#loginctl lock-session
#slock
slock -m "Session locked on $(date "+%a %d, %I:%M:%S %p")"
