#!/usr/bin/env bash
set -e

DATA_ETC="/data/etc-pihole"
DATA_DNS="/data/etc-dnsmasq.d"

echo "🔧 Ensuring persistent config dirs exist..."
mkdir -p "${DATA_ETC}"
mkdir -p "${DATA_DNS}"

echo "🔧 Forcing symlinks..."
rm -rf /etc/pihole
ln -s "${DATA_ETC}" /etc/pihole

rm -rf /etc/dnsmasq.d
ln -s "${DATA_DNS}" /etc/dnsmasq.d

echo "✅ Init done: configs now stored in /data"
