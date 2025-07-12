#!/usr/bin/env bash
set -e

DATA_ETC="/data/etc-pihole"
DATA_DNS="/data/etc-dnsmasq.d"

# Initialize configs if first run
if [ ! -f "${DATA_ETC}/setupVars.conf" ]; then
  echo "🔧 Copying default Pi-hole config"
  mkdir -p "${DATA_ETC}"
  cp -a /defaults/etc-pihole/* "${DATA_ETC}/"
fi

if [ ! -f "${DATA_DNS}/01-pihole.conf" ]; then
  echo "🔧 Copying default dnsmasq config"
  mkdir -p "${DATA_DNS}"
  cp -a /defaults/etc-dnsmasq.d/* "${DATA_DNS}/"
fi

# Replace /etc with symlinks to persistent storage
rm -rf /etc/pihole /etc/dnsmasq.d
ln -s "${DATA_ETC}" /etc/pihole
ln -s "${DATA_DNS}" /etc/dnsmasq.d
