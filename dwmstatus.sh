#!/bin/bash
#xsetroot -name "$(/home/diamond/bin/power_usage_now) | $(/home/diamond/bin/cputemp) |$(uptime | sed 's/.*,//') | $(/home/diamond/bin/battery) | $(date +%F) $(date +%I:%M) $(date +%p)"
xsetroot -name "$(uptime | sed 's/.*,//') | $(/home/diamond/bin/battery) | $(date +%F) $(date +%I:%M) $(date +%p)"
