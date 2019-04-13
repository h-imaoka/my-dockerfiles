FROM alpine:3.9

RUN apk --no-cache add dnsmasq
EXPOSE 53 53/udp

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["dnsmasq", "-k"]
