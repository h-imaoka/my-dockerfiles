#!/bin/bash
set -e

# cp -rf /src/conf/common.${EMBULK_ENV-production} -T /src/conf/common
exec "$@"
