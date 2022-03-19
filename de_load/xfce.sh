yay -R touchegg pasystray
yay -S thunar-archive-plugin thunar-media-tags-plugin thunar-volman xfdesktop thunar

cd ~/git/libinput-gestures
sudo make install
sudo libinput-gestures-setup install
libinput-gestures-setup autostart

cd ~/
systemctl disable gdm
sleep 1
systemctl enable lightdm
