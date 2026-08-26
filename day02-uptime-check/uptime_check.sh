


#!/bin/bash
# uptime_check.sh - checks if a website/service is reachable

URL="https://www.google.com"

response=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$response" -eq 200 ]; then
    echo "UP: $URL is reachable (HTTP $response)"
else
    echo "DOWN: $URL returned HTTP $response"
fi

# test comment for CI PR check
