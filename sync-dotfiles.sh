#!/bin/bash
#set -euo pipefail
interval=0.2

# bin
cd ~/bin
git add -A
git commit -asm "Automatic sync"
git push

echo "========== Synced bin =========="

# dotfiles
cp -r ~/.config/openbox ~/git/dotfiles/.config/
cd ~/git/dotfiles
./backup.sh
git add -A
git commit -asm "Automatic sync"
git push

echo "========== Synced dotfiles =========="

# emacs
cp ~/.emacs.d/config.org ~/git/emacs/
cd ~/git/emacs
git add -A
git commit -asm "Automatic sync"
git push

echo "========== Synced emacs =========="
