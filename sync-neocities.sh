#!/bin/bash
set -euo pipefail

if pgrep 'emacs' > /dev/null
then
	# sync website to neocities
	echo
	echo "========== SYNC: NEOCITIES =========="
	echo

	# purge old html files
	echo "Purging old files on neocities.org"
	#echo "Skip deleting index.html as we cannot delete it"
	#/home/diamond/.local/share/gem/ruby/3.0.0/bin/neocities delete index.html

	neocities delete books.html

	neocities delete resume.html

	neocities delete emacs.html
	#neocities delete resume.html
	#neocities delete emacs.html

	# generate new html files
	echo "Compiling new files locally"
	emacsclient -e "(progn (find-file \"~/Dropbox/neocities/index.org\") (org-html-export-to-html))"
	emacsclient -e "(progn (find-file \"~/Dropbox/neocities/books.org\") (org-html-export-to-html))"
	emacsclient -e "(progn (find-file \"~/git/resume/resume.org\") (org-html-export-to-html))"
	emacsclient -e "(progn (find-file \"~/.emacs.d/config.org\") (org-html-export-to-html))"
	emacsclient -e "(progn (find-file \"~/Dropbox/neocities/digital.org\") (org-html-export-to-html))"
	emacsclient -e "(progn (find-file \"~/Dropbox/neocities/blog.org\") (org-html-export-to-html))"

	# upload new html files
	echo "Uploading new files to neocities.org"
	neocities upload ~/Dropbox/neocities/index.html
	neocities upload ~/Dropbox/neocities/books.html
	neocities upload ~/git/resume/resume.html
	neocities upload ~/.emacs.d/emacs.html
	neocities upload ~/Dropbox/neocities/digital.html
	neocities upload ~/Dropbox/neocities/blog.html
	neocities upload ~/Dropbox/neocities/blog2.html
	echo
	echo "========== DONE: NEOCITIES =========="
	echo
	notify-send "Neocities sync done."
else
	echo
	echo "ERROR: emacs is not running, abandoning sync."
	echo
	notify-send "Neocities sync failed."
fi
