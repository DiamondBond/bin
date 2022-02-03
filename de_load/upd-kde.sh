#!/usr/bin/env bash

# Install KDE Plasma

yay -S plasma sddm ark cantor dolphin dolphin-plugins elisa ffmpegthumbs kalgebra kapman kate kbreakout kcalc kcolorchooser kcharselect kdeconnect kde-dev-scripts kde-dev-utils kdenetwork-filesharing kdenlive kdepim-addons kdesdk-thumbnailers kio-extras kigo kleopatra knotes kipi-plugins knights konsole krdc ksystemlog kubrick okular sweeper spectacle khtml chmlib calligra

yay -S akonadi-import-wizard akonadi-calendar kmailtransport calendarsupport kdepim-runtime libksieve messagelib eventviews mailcommon incidenceeditor

yay -S ffmpegthumbs chmlib

yay -R transmission-gtk pavucontrol
yay -S transmission-qt pavucontrol-qt latte-dock
yay -R nautilus

yay -R thunar-archive-plugin thunar-media-tags-plugin thunar-volman xfdesktop thunar

yay -R chrome-gnome-shell

yay -S neochat okteta

# Dont forget to update ~/.config/gtk-*
# widget.use-xdg-desktop-portal
