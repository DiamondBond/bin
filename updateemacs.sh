#!/usr/bin/env bash
set -euo pipefail

cd ~/src/emacs/
git pull

./autogen.sh

./configure --with-dbus --with-gif --with-jpeg --with-png --with-rsvg --with-tiff --with-xft --with-xpm --with-gpm=no --disable-silent-rules --with-modules --with-file-notification=inotify --with-mailutils --with-x=yes --with-x-toolkit=athena --without-gconf --without-gsettings --with-lcms2 --with-imagemagick --with-xml2 --with-json --with-harfbuzz --without-compress-install --with-native-compilation CFLAGS="-O3 -mtune=native -march=native -fomit-frame-pointer -flto -fno-semantic-interposition"

# Emacs29(HEAD)
#--with-xinput2

make NATIVE_FULL_AOT=1 -j$(nproc)
sudo make install
