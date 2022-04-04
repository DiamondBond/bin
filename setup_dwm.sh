#!/bin/sh
yay -S dunst thunar blueman
yay -R touche
sudo pacman -Rdd xdg-desktop-portal xdg-desktop-portal-gtk
# setup libinput-gestures
#cp ~/.config/libinput-gestures-dwm.conf ~/.config/libinput-gestures.conf
#systemctl enable ly
