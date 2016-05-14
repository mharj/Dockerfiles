#!/bin/bash
set -e
if [ -t 0 ] && [ ! -f /opt/opendj/config/config.ldif ]; then
        /opt/opendj/setup --cli
        /opt/opendj/bin/stop-ds
fi
/opt/opendj/bin/start-ds --nodetach
