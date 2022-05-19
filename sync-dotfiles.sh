#!/bin/bash
set -euo pipefail
interval=0.5

# ~/git/bin
cd ~/bin
git add -A
git commit -asm "Automatic sync"
git push

notify-send "Synced bin " &
sleep $interval;

# ~/git/dotfiles
cp ~/.config/openbox ~/git/dotfiles/.config/
cd ~/git/dotfiles
./backup.sh
git add -A
git commit -asm "Automatic sync"
git push

notify-send "Synced dots" &
sleep $interval;

# ~/git/emacs
cd ~/git/emacs
git add -A
git commit -asm "Automatic sync"
git push

notify-send "Synced emacs" &
#sleep $interval;
