#!/bin/bash
# Wait for Pi-hole to be ready
until pihole status > /dev/null 2>&1; do
  sleep 2
done

if [ -n "$PASSWORD" ]; then
  pihole -a -p "$PASSWORD"
fi

# Start Pi-hole as usual
exec /start.sh
