#!/bin/bash
# ping_checker.sh - pings a list of hosts and reports up/down status

HOSTS=("google.com" "github.com" "notarealsite12345.com")

for host in "${HOSTS[@]}"; do
    if ping -n 1 -w 2000 "$host" > /dev/null 2>&1; then
        echo "UP: $host"
    else
        echo "DOWN: $host"
    fi
done


