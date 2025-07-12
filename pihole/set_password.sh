#!/bin/bash
# Set Pi-hole admin password from Home Assistant add-on option
if [ -n "$PASSWORD" ]; then
  pihole -a -p "$PASSWORD"
fi
exec /s6-init
