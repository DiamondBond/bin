#!/bin/bash
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
emacsclient -e '(modus-themes-dark)'
