#!/bin/bash

# switch openbox theme
clear
echo -e "Choose openbox theme \n"
PS3="Type a number or 'q' to quit: "
fileList=$(find ~/.themes -type d -name "openbox-3"  | cut -d "/" -f5)

select fileName in $fileList; do
    if [ -n "$fileName" ]; then
    sed -i "s/$(grep "<theme>" ~/.config/openbox/rc.xml -A 5 | grep "<name>"| awk -F"[><]" '{print $3}')/$fileName/g" ~/.config/openbox/rc.xml
    openbox --reconfigure
    fi
    break
done
