# Use official Pi-hole image as base
FROM pihole/pihole:latest

# Install extra tools if needed (optional)
RUN apk add --no-cache bash curl su-exec

# Declare volumes → these are where Pi-hole keeps its state
# Supervisor will map /data/etc-pihole → /etc/pihole etc.
VOLUME /etc/pihole
VOLUME /etc/dnsmasq.d

# Expose required ports for DNS & web
EXPOSE 53/tcp 53/udp 80/tcp 443/tcp

# Use Pi-hole's own entrypoint & CMD → no need to override
# so Supervisor just runs the container as intended
