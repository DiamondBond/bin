#!/bin/bash
set -euo pipefail

# Restore auth info
cp ~/org/.authinfo.gpg ~/
cp ~/org/.secrets.el.gpg ~/

# Restore personal files
#cp ~/org/custom.el ~/.emacs.d/
cp ~/org/userconfig.org ~/.emacs.d/
cp ~/org/network-security.data ~/.emacs.d/

echo "Restore complete."
