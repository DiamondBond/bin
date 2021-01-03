#!/bin/bash
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
emacsclient -e '(modus-themes-light)'
