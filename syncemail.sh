#!/usr/bin/env bash
set -euo pipefail

# Sync mail
offlineimap

# Notify user
notify-send "Mail Synced" -t 2500
