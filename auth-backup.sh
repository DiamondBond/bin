#!/bin/bash
set -euo pipefail

# Backup auth info
cp ~/.authinfo.gpg ~/org/
cp ~/.secrets.el.gpg ~/org/

# Backup personal files
#cp ~/.emacs.d/custom.el ~/org/
cp ~/.emacs.d/userconfig.org ~/org/
cp ~/.emacs.d/network-security.data ~/org/

echo "Backup complete."
