#!/bin/bash
pulseaudio -k
rm -rf ~/.config/pulse
sudo alsa force-reload
pulseaudio -k
rm -rf ~/.config/pulse
pulseaudio -k
rm -rf ~/.config/pulse
systemctl reboot
