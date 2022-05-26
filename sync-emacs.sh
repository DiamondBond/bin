#!/bin/bash
set -euo pipefail

# base
cp ~/.emacs.d/early-init.el ~/git/emacs/
cp ~/.emacs.d/init.el ~/git/emacs/
cp ~/.emacs.d/config.org ~/git/emacs/
#cp ~/.emacs.d/globals.org ~/git/emacs/

# user
cp -r ~/.emacs.d/modules ~/git/emacs/
cp -r ~/.emacs.d/resources ~/git/emacs/
#cp ~/.emacs.d/userconfig.org ~/git/emacs/
#cp -r ~/.emacs.d/snippets ~/git/emacs/
