#!/bin/bash

id=`python ~/bin/id_list.py`
i3-msg [id="$id"] focus > /dev/null
