#!/usr/bin/env bash
set -e

echo "🔧 Patching Pi-hole to use /data/etc-pihole instead of /etc/pihole"

# Only patch actual scripts
find /etc/.pihole/ -type f -exec sed -i 's|/etc/pihole|/data/etc-pihole|g' {} +
find /etc/.pihole/ -type f -exec sed -i 's|/etc/dnsmasq.d|/data/etc-dnsmasq.d|g' {} +

echo "✅ Patch done"
