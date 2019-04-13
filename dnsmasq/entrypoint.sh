#!/bin/sh
set -e

if [ "$1" = 'dnsmasq' ]; then
  # echo "nameserver ${upstream_resolver}" > /etc/resolv.dnsmasq
  # drop $1
  shift
  exec dnsmasq "$@"
fi

exec "$@"
