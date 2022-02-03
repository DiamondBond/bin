#!/bin/python
import datetime as dt
import time
import os

SUNSET  = 20 # switch to dark mode at 8PM
SUNRISE = 6  # day starts at 6AM

DAY_WP   = "/home/diamond/.earth.jpg"
NIGHT_WP = "/home/diamond/.earth.jpg"

DAY_THEME   = "Adwaita"
NIGHT_THEME = "Adwaita-dark"


WALLPAPER_COMMAND = "feh --bg-scale {}"
THEME_COMMAND     = "gsettings set org.gnome.desktop.interface gtk-theme {}"

if __name__ == '__main__':
    while (True):
        wallpaper = ""
        theme     = ""
        kitty     = ""

        now = dt.datetime.now()
        if now.hour >= SUNSET or now.hour < SUNRISE: 
            wallpaper = NIGHT_WP
            theme     = NIGHT_THEME
        else:
            wallpaper = DAY_WP
            theme     = DAY_THEME

        os.system(WALLPAPER_COMMAND.format(wallpaper))
        os.system(THEME_COMMAND.format(theme))
        os.system("emacsclient --eval '(with-current-buffer (window-buffer)(modus-themes-toggle))'")

        time.sleep(1 * 60) # check every minute

