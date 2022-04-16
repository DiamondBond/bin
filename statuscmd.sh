echo "$(uptime | sed 's/.*,//') | $(/home/diamond/bin/battery) | $(date +%F) $(date +%I:%M) $(date +%p)"
