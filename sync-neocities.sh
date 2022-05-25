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
	#echo "Skipping deleting index.html as we cannot delete index.html"
	#/home/diamond/.local/share/gem/ruby/3.0.0/bin/neocities delete index.html
	/home/diamond/.local/share/gem/ruby/3.0.0/bin/neocities delete resume.html
	/home/diamond/.local/share/gem/ruby/3.0.0/bin/neocities delete emacs.html

	# generate new html files
	echo "Compiling new files locally"
	emacsclient -e "(progn (find-file \"~/Projects/neocities/index.org\") (org-html-export-to-html))"
	emacsclient -e "(progn (find-file \"~/git/resume/resume.org\") (org-html-export-to-html))"
	emacsclient -e "(progn (find-file \"~/.emacs.d/config.org\") (org-html-export-to-html))"

	# upload new html files
	echo "Uploading new files to neocities.org"
	/home/diamond/.local/share/gem/ruby/3.0.0/bin/neocities upload ~/Projects/neocities/index.html
	/home/diamond/.local/share/gem/ruby/3.0.0/bin/neocities upload ~/git/resume/resume.html
	/home/diamond/.local/share/gem/ruby/3.0.0/bin/neocities upload ~/.emacs.d/emacs.html
	echo
	echo "========== DONE: NEOCITIES =========="
	echo

else
	echo
	echo "ERROR: emacs is not running, abandoning sync."
	echo
fi
