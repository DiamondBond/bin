#!/bin/bash
set -euo pipefail

if pgrep 'emacs' > /dev/null
then
	# generate new index.html
	cd /home/diamond/Dropbox/neocities/blog/blog
	tree -H '.' -L 1 --noreport --dirsfirst -T 'Blog' -s -D --charset utf-8 -P "*.html" -o index.html

	# upload new html files
	cd /home/diamond/Dropbox/neocities/blog/
	neocities push .
	notify-send "Blog sync done."
else
	notify-send "Blog sync failed."
fi
