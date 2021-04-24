#!/usr/bin/env bash
set -euo pipefail

cd ~/git/spotify-adblock-linux
git pull
make
sudo make install
