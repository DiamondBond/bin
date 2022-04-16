#!/bin/sh
yay -S dunst thunar blueman
yay -R touche
sudo pacman -Rdd xdg-desktop-portal xdg-desktop-portal-gtk
# setup libinput-gestures
#cp ~/.config/libinput-gestures-dwm.conf ~/.config/libinput-gestures.conf
#systemctl enable ly
#yay -R touchegg pavucontrol-qt transmission-qt
#yay -S gmrun dunst polkit-gnome brightnessctl libinput-gestures blueman
#yay -S thunar xfce4-appfinder mousepad xfce4-power-manager galculator xfce4-terminal pavucontrol transmission-gtk xfce4-screenshooter
##yay -S ly
##yay -S lxappearance
#yay -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings light-locker

