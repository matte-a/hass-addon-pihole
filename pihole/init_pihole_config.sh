#!/usr/bin/env bash
set -e

DATA_ETC="/data/etc-pihole"
DATA_DNS="/data/etc-dnsmasq.d"

echo "🔧 Ensuring persistent config dirs exist..."
mkdir -p "${DATA_ETC}"
mkdir -p "${DATA_DNS}"

echo "🔧 Forcing /etc symlinks to persistent storage..."
rm -rf /etc/pihole /etc/dnsmasq.d
ln -s "${DATA_ETC}" /etc/pihole
ln -s "${DATA_DNS}" /etc/dnsmasq.d"

echo "✅ Init done: Pi-hole configs now stored in /data"
