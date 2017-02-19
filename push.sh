#!/bin/sh

op="${1:-op}"
mac="${2:-mac}"
ip="${3:-ip}"
hostname="${4}"

topic="${op} ${hostname}"
payload="${ip} ${hostname} ${mac}"

curl -s -k \
-F "token=YOUR-API-TOKEN" \
-F "user=YOUR-USER-TOKEN" \
-F "message=${payload}" \
-F "title=${topic}" \
-F "priority=0" \
https://api.pushover.net/1/messages.json > /dev/null
