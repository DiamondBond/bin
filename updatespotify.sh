#!/usr/bin/env bash
set -euo pipefail

cd ~/git/spotify-adblock
git pull
make
sudo make install
