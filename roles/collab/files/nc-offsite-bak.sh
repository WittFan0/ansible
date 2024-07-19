#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

[ -x /usr/bin/rclone ] || exit 0
echo "rclone exists and is executable" | sudo systemd-cat -t nc-offsite-bak -p info

[ -f /opt/nextcloud_rclone.conf ] || exit 0
echo "offsite login credentials file exists" | sudo systemd-cat -t nc-offsite-bak -p info

echo "Copying local Nextcloud backup to offsite storage" | systemd-cat -t nc-offsite-bak -p info
rclone sync /mnt/sata_data/backup/nextcloud/ blomp-encrypted:nc -v --config /opt/nextcloud_rclone.conf > "/var/log/nc-offsite-bak.log" 2>&1
echo "Nextcloud backup successfully copied to offsite storage" | systemd-cat -t dnsmasq-blacklist-update -p info
