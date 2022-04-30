#!/usr/bin/env bash
set -euo pipefail

cd ~/git/spotify-adblock
git pull
make
sudo make install
mkdir -p ~/.spotify-adblock && cp target/release/libspotifyadblock.so ~/.spotify-adblock/spotify-adblock.so
mkdir -p ~/.config/spotify-adblock && cp config.toml ~/.config/spotify-adblock
flatpak override --user --filesystem="~/.spotify-adblock/spotify-adblock.so" --filesystem="~/.config/spotify-adblock/config.toml" com.spotify.Client

echo ""
echo "DONT FORGET TO REPLACE ~/.spotify-adblock/spotify-adblock.so with the latest spotify-adblock.so file from their github releases page"
echo ""
#cp ~/Downloads/spotify-adblock.so ~/.spotify-adblock/spotify-adblock.so
