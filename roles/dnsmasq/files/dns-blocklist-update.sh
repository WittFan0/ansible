#!/bin/sh

# Exit immediately if a command exits with a non-zero status
set -e

# Test whether curl exists and is executable.
[ -x /usr/bin/curl ] || exit 0
echo "curl exists and is executable" | sudo systemd-cat -t dnsmasq-blacklist-update -p info

echo "Downloading DNS blacklist" | systemd-cat -t dnsmasq-blacklist-update -p info
/usr/bin/curl -o /etc/dnsmasq.blacklist.txt https://big.oisd.nl/dnsmasq2
echo "DNS blacklist downloaded" | systemd-cat -t dnsmasq-blacklist-update -p info
