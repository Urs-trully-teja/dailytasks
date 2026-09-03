FROM ubuntu:22.04

RUN apt-get update && apt-get install -y bash curl

WORKDIR /app

COPY . .

RUN chmod +x day01-disk-usage/disk_usage.sh \
    day02-uptime-check/uptime_check.sh \
    day03-backup-script/backup.sh \
    day04-ping-checker/ping_checker.sh

CMD ["bash"]


