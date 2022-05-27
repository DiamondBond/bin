#!/bin/bash

# function to tangle .org files
function org-tangle () {
  emacs --batch -l org "$1" -f org-babel-tangle
}

# tangle base configuration
org-tangle ~/.emacs.d/config.org
org-tangle ~/.emacs.d/globals.org
org-tangle ~/.emacs.d/userconfig.org

# tangle modules
org-tangle ~/.emacs.d/modules/evil.org
org-tangle ~/.emacs.d/modules/reddit.org
org-tangle ~/.emacs.d/modules/discord.org
org-tangle ~/.emacs.d/modules/mail.org
