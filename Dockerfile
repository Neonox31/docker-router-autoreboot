FROM scottw/alpine-perl

COPY router-reboot.sh /opt/
RUN chmod +x /opt/router-reboot.sh

CMD ["/opt/router-reboot.sh"]
