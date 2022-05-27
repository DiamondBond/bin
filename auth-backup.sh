#!/bin/bash
set -euo pipefail

# secrets
cp ~/.authinfo.gpg ~/org/
cp ~/.secrets.el.gpg ~/org/
cp ~/.emacs.d/network-security.data ~/org/

# user related
cp ~/.emacs.d/custom.el ~/org/
cp ~/.emacs.d/userconfig.org ~/org/
