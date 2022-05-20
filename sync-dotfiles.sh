#!/bin/bash
#set -euo pipefail
interval=0.2

# bin
echo
echo "========== SYNC: BIN =========="
cd ~/bin
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: BIN =========="
echo

# dotfiles
echo
echo "========== SYNC: DOTS =========="
cp -r ~/.config/openbox ~/git/dotfiles/.config/
cp ~/.config/gtk-3.0/gtk.css ~/git/dotfiles/.config/gtk-3.0/
cp -r ~/.themes/win ~/git/dotfiles/.themes/
cp -r ~/.config/xfce4/helpers.rc ~/git/dotfiles/.config/xfce4/
cp -r ~/.config/xfce4/panel ~/git/dotfiles/.config/xfce4/
cp -r ~/.config/xfce4/terminal ~/git/dotfiles/.config/xfce4/
cp -r ~/.config/xfce4/xfconf ~/git/dotfiles/.config/xfce4/
cd ~/git/dotfiles
./backup.sh
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: DOTS =========="
echo

# emacs
echo
echo "========== SYNC: EMACS =========="
cd ~/bin
./sync-emacs.sh
cd ~/git/emacs
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: EMACS =========="
echo
