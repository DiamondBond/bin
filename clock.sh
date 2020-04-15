#!/bin/sh

# Source colors
white=f0f0f0
gray=70838c

while :; do
    echo "       $(neofetch --stdout memory) %{c}$(date "+%a %d %b %l:%M %p")%{r}$(mpc current | cut -c 1-25)      %{r}"
	sleep 2s
done |

lemonbar -d -b -g "900x33+233+10" -f "-xos4-terminus-medium-r-normal-*-12-120-72-72-c-60-iso10646-1" -B "#$white" -F "#$gray"
