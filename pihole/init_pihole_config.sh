#!/usr/bin/env bash
set -e

DATA_ETC="/data/etc-pihole"
DATA_DNS="/data/etc-dnsmasq.d"

if [ ! -f "${DATA_ETC}/setupVars.conf" ]; then
  echo "🔧 Initializing Pi-hole config"
  cp -r /etc-pihole/* "${DATA_ETC}/"
fi

if [ ! -L "/etc/pihole" ]; then
  rm -rf /etc/pihole
  ln -s "${DATA_ETC}" /etc/pihole
fi

if [ ! -L "/etc/dnsmasq.d" ]; then
  rm -rf /etc/dnsmasq.d
  ln -s "${DATA_DNS}" /etc/dnsmasq.d
fi
