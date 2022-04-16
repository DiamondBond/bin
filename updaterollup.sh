#!/bin/bash
update && cleanup && yay -Sc && sudo pacman -Rnsc $(unused_orphans)
