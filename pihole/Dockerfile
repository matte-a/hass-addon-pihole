FROM pihole/pihole:latest

COPY set_password.sh /set_password.sh
RUN chmod +x /set_password.sh
ENTRYPOINT ["/set_password.sh"]
