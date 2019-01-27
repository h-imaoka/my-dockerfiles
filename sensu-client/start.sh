#!/bin/bash

EMBEDDED_RUBY=true
CONFIG_FILE=/etc/sensu/config.json
CONFIG_DIR=/etc/sensu/conf.d
EXTENSION_DIR=/etc/sensu/extensions
PLUGINS_DIR=/etc/sensu/plugins
HANDLERS_DIR=/etc/sensu/handlers
#LOG_DIR=/var/log/sensu
LOG_LEVEL=info
#PID_DIR=/var/run/sensu
#USER=sensu
#SERVICE_MAX_WAIT=10

if [ -f /etc/default/sensu ]; then
    . /etc/default/sensu
fi

cd /opt/sensu

options="-b -c $CONFIG_FILE -d $CONFIG_DIR -e $EXTENSION_DIR -L $LOG_LEVEL $OPTIONS"

set_sensu_paths() {
    if [ "x$EMBEDDED_RUBY" = "xtrue" ]; then
        export PATH=/opt/sensu/embedded/bin:$PATH:$PLUGINS_DIR:$HANDLERS_DIR
        export GEM_PATH=/opt/sensu/embedded/lib/ruby/gems/2.3.0:$GEM_PATH
    else
        export PATH=$PATH:$PLUGINS_DIR:$HANDLERS_DIR
    fi
}

set_sensu_paths

/opt/sensu/bin/sensu-client $options

exit $?
