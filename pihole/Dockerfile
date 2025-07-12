FROM pihole/pihole:latest


# Install core dependencies (bash, curl, etc.)
RUN apk add --no-cache \
    bash \
    curl \
    su-exec

# Create persistent data directories
RUN mkdir -p /data/etc-pihole /data/etc-dnsmasq.d

# Copy your startup script into the container
COPY run.sh /run.sh
RUN chmod +x /run.sh

# Expose necessary ports if not using host network
EXPOSE 53/tcp 53/udp 80/tcp

# Use Supervisor’s init if desired, else run script directly
CMD [ "/run.sh" ]