#!/bin/bash
#pulseaudio -k
#rm -rf ~/.config/pulse
#sudo alsa force-reload
#pulseaudio -k
#rm -rf ~/.config/pulse
#pulseaudio -k
#rm -rf ~/.config/pulse
#systemctl reboot
#sudo alsa force-reload && pulseaudio -k && rm -rf ~/.config/pulse/ && pulseaudio -k
pulseaudio -k
sleep 1;
pulseaudio --start
