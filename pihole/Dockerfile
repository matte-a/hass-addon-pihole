# Use official Pi-hole image
FROM pihole/pihole:latest

# Install optional tools
RUN apk add --no-cache bash curl su-exec

# Copy init + run scripts
COPY init_pihole_config.sh /init_pihole_config.sh
COPY run.sh /run.sh
RUN chmod +x /init_pihole_config.sh /run.sh

# Expose required ports
EXPOSE 53/tcp 53/udp 80/tcp 443/tcp

# Start custom entrypoint
CMD [ "/run.sh" ]
