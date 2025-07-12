FROM pihole/pihole:latest

# Install tools
RUN apk add --no-cache bash curl patch

# Copy patch script & run script
COPY patch_pihole.sh /patch_pihole.sh
COPY run.sh /run.sh
RUN chmod +x /patch_pihole.sh /run.sh

# Patch official scripts to use /data/etc-pihole
RUN /patch_pihole.sh

EXPOSE 53/tcp 53/udp 80/tcp 443/tcp

CMD [ "/run.sh" ]
