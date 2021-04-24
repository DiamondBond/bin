#!/bin/sh
cd /tmp/
mkdir tiktokcringe
cd tiktokcringe
youtube-dl $(curl -s -H "User-agent: 'ayylmao'" https://www.reddit.com/r/TikTokCringe/hot.json?limit=12 | jq '.' | grep url_overridden_by_dest | grep -Eoh "https:\/\/v\.redd\.it\/\w{13}")
