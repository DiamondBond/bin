#!/bin/bash
pulseaudio -k
rm -rf ~/.config/pulse
sudo alsa force-reload
systemctl reboot
