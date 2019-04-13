FROM alpine:3.9

RUN apk --no-cache add unbound

COPY unbound.conf /etc/unbound/unbound.conf

CMD ["unbound", "-d"]
