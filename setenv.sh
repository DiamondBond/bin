#!/bin/bash

# Export Lang & Locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# XDG/GDK
export XDG_SESSION_TYPE=X11
export GDK_BACKEND=x11

# Override style for QT applications
export QT_STYLE_OVERRIDE=gtk
export QT_SCALE_FACTOR=0.5

# Fix misbehaving Java applications
export _JAVA_AWT_WM_NONREPARENTING=1
