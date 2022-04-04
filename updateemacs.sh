#!/usr/bin/env bash
set -euo pipefail

cd ~/src/emacs/
git pull

./autogen.sh
./configure --with-dbus --with-gif --with-jpeg --with-png --with-rsvg --with-tiff --with-xft --with-xpm --with-gpm=no --disable-silent-rules --with-modules --with-file-notification=inotify --with-mailutils --with-x=yes --with-x-toolkit=gtk3 --with-xwidgets --with-lcms2 --with-imagemagick --with-xml2 --with-json --with-harfbuzz --with-xinput2 --with-native-compilation CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer"

make NATIVE_FULL_AOT=1 -j$(nproc)
sudo make install
