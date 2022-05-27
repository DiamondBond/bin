#!/bin/bash
set -euo pipefail

# Restore auth info
cp ~/org/.authinfo.gpg ~/
cp ~/org/.secrets.el.gpg ~/

# Restore personal files
cp ~/org/network-security.data ~/.emacs.d/
cp ~/org/custom.el ~/.emacs.d/
cp ~/org/userconfig.org ~/.emacs.d/
