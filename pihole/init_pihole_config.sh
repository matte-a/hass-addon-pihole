#!/usr/bin/env bash
set -e

DATA_ETC="/data/etc-pihole"
DATA_DNS="/data/etc-dnsmasq.d"

echo "🔧 Checking persistent config dirs..."

# Create empty dirs if first run
if [ ! -f "${DATA_ETC}/setupVars.conf" ]; then
  echo "📦 Creating empty /data/etc-pihole"
  mkdir -p "${DATA_ETC}"
fi

if [ ! -f "${DATA_DNS}/01-pihole.conf" ]; then
  echo "📦 Creating empty /data/etc-dnsmasq.d"
  mkdir -p "${DATA_DNS}"
fi

# Replace /etc with symlinks to persistent storage
rm -rf /etc/pihole /etc/dnsmasq.d
ln -s "${DATA_ETC}" /etc/pihole
ln -s "${DATA_DNS}" /etc/dnsmasq.d

echo "✅ Init done: /etc points to /data"
