yay -R pasystray
yay -R thunar-archive-plugin thunar-media-tags-plugin thunar-volman xfdesktop thunar

sudo libinput-gestures-setup uninstall

yay -S touchegg

systemctl enable gdm
systemctl disable lightdm
