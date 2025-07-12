FROM pihole/pihole:latest

RUN apk add --no-cache bash curl

COPY init_pihole_config.sh /init_pihole_config.sh
COPY run.sh /run.sh
RUN chmod +x /init_pihole_config.sh /run.sh

EXPOSE 53/tcp 53/udp 8080/tcp 8443/tcp

CMD [ "/run.sh" ]
