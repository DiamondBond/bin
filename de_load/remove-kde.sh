#!/usr/bin/env bash

# Remove KDE Plasma

yay -R plasma sddm ark cantor dolphin dolphin-plugins elisa ffmpegthumbs kalgebra kapman kate kbreakout kcalc kcolorchooser kcharselect kdeconnect kde-dev-scripts kde-dev-utils kdenetwork-filesharing kdenlive kdepim-addons kdesdk-thumbnailers kio-extras kigo kleopatra knotes kipi-plugins knights konsole krdc ksystemlog kubrick okular sweeper spectacle khtml chmlib calligra

yay -R akonadi-import-wizard akonadi-calendar kmailtransport calendarsupport kdepim-runtime libksieve messagelib eventviews mailcommon incidenceeditor

yay -S ffmpegthumbs chmlib

yay -R transmission-qt pavucontrol-qt latte-dock
yay -S transmission-gtk pavucontrol
yay -S nautilus

yay -S thunar-archive-plugin thunar-media-tags-plugin thunar-volman xfdesktop thunar

yay -S chrome-gnome-shell

yay -R neochat okteta

# Dont forget to update ~/.config/gtk-*
#widget.use-xdg-desktop-portal
