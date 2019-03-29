FROM alpine:latest

RUN apk add --update openvpn openssl iptables bash curl && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

ADD ./bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

COPY ./server.conf /etc/openvpn/server.conf

VOLUME ["/pki", "/etc/openvpn/ccd"]

EXPOSE 1194/tcp
EXPOSE 7505/tcp

CMD ["openvpn-run"]