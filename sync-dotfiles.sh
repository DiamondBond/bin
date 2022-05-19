#!/bin/bash
#set -euo pipefail
interval=0.2

# bin
echo "\n========== SYNCING: BIN =========="
cd ~/bin
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: BIN ==========\n"

# dotfiles
echo "\n========== SYNCING: DOTS =========="
cp -r ~/.config/openbox ~/git/dotfiles/.config/
cd ~/git/dotfiles
./backup.sh
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: DOTS ==========\n"

# emacs
echo "\n========== SYNCING: EMACS =========="
cp ~/.emacs.d/config.org ~/git/emacs/
cd ~/git/emacs
git add -A
git commit -asm "Automatic sync"
git push
echo "========== DONE: EMACS ==========\n"
