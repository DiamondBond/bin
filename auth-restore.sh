#!/bin/bash
set -euo pipefail

# Emacs looks for these files in ~/
cp ~/org/.authinfo.gpg ~/
cp ~/org/.secrets.el.gpg ~/

# Emacs looks for these files in ~/.emacs.d
cp ~/org/network-security.data ~/.emacs.d/
cp ~/org/custom.el ~/.emacs.d/
cp ~/org/userconfig.org ~/.emacs.d/
