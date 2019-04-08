#!/bin/bash
set -e

if [ "$1" = 'embulk' ]; then
  # cp -rf /src/conf/common.${EMBULK_ENV-production} -T /src/conf/common

  # drop $1
  shift
  exec embulk "$@"
fi

exec "$@"
