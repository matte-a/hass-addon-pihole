#!/usr/bin/env bash
set -e

echo "🚀 Preparing persistent config dirs..."
mkdir -p /data/etc-pihole /data/etc-dnsmasq.d

echo "🔗 Forcing symlinks"
rm -rf /etc/pihole
ln -s /data/etc-pihole /etc/pihole

rm -rf /etc/dnsmasq.d
ln -s /data/etc-dnsmasq.d /etc/dnsmasq.d

echo "🧠 Starting Pi-hole services"
/start.sh
