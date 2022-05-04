#!/bin/bash
cd /usr/share/icons/Adwaita/cursors
sudo mv watch watch.old
sudo ln -s left_ptr watch
sudo mv left_ptr_watch left_ptr_watch.old
sudo ln -s left_ptr left_ptr_watch
exit

