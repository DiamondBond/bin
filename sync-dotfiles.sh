#!/bin/bash
#set -euo pipefail
interval=0.2

# bin
echo
echo "========== SYNCING: BIN =========="
cd ~/bin
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: BIN =========="
echo

# dotfiles
echo
echo "========== SYNCING: DOTS =========="
cp -r ~/.config/openbox ~/git/dotfiles/.config/
cd ~/git/dotfiles
./backup.sh
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: DOTS =========="
echo

# emacs
echo
echo "========== SYNCING: EMACS =========="
cp ~/.emacs.d/config.org ~/git/emacs/
cd ~/git/emacs
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: EMACS =========="
echo
