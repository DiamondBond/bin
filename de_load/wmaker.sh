yay -S pasystray dunst
yay -R touchegg

cd ~/git/libinput-gestures
sudo make install
sudo libinput-gestures-setup install
libinput-gestures-setup autostart

cd ~/
systemctl disable gdm
systemctl enable lightdm
