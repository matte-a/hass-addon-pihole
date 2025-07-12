#!/usr/bin/env bash
set -e

echo "🔧 Patching Pi-hole to use /data/etc-pihole instead of /etc/pihole"

# Patch main scripts if they hardcode paths
# Replace /etc/pihole with /data/etc-pihole
find / -type f -exec sed -i 's|/etc/pihole|/data/etc-pihole|g' {} +

# Replace /etc/dnsmasq.d with /data/etc-dnsmasq.d
find / -type f -exec sed -i 's|/etc/dnsmasq.d|/data/etc-dnsmasq.d|g' {} +

echo "✅ Patch done"
