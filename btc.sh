#!/usr/bin/env bash
set -euo pipefail

tp=36953

tog=1
i=0
t=1
song=/home/$USER/bin/you-suffer.wav

while true; do
	price=$(curl -s https://rate.sx/1BTC | cut -d. -f1)
	(($tog == 1)) && (($price <$tp)) && tog=0 && paplay $song
	(($tog == 0)) && (($price >$tp)) && tog=1 && paplay $song

	i=$((i+1))
	echo $i " = " echo $price
	sleep $t
done
