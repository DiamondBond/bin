#!/bin/bash
# switch openbox theme
clear
echo -e "Choose openbox theme \n"
PS3="Type a number or 'q' to quit: "
fileList=$(find ~/.themes -type d -name "openbox-3"  | cut -d "/" -f5)
ob_rc="$HOME/.config/openbox/rc.xml"

select fileName in $fileList; do
    if [ -n "$fileName" ]; then
    # priceless piece of information: https://superuser.com/a/508143
    xmlstarlet ed -L -N o="http://openbox.org/3.4/rc" -u '/o:openbox_config/o:theme/o:name' -v "$fileName" "$ob_rc"
    openbox --reconfigure
    fi
    break
done
