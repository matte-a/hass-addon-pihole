#!/usr/bin/env bash
set -e

echo "🚀 Running init script..."
bash /init_pihole_config.sh

echo "🧠 Starting Pi-hole FTL"
/usr/bin/pihole-FTL &

echo "🌐 Starting web server (lighttpd)"
lighttpd -D -f /etc/lighttpd/lighttpd.conf
