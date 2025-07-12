FROM pihole/pihole:latest

RUN apk add --no-cache bash curl su-exec

RUN mkdir -p /data/etc-pihole /data/etc-dnsmasq.d

COPY init_pihole_config.sh /init_pihole_config.sh
RUN chmod +x /init_pihole_config.sh

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 53/tcp 53/udp 80/tcp

CMD [ "/run.sh" ]