#!/bin/sh

cat /envoy.yaml.tmpl | envsubst \$GATEWAY_PORT,\$APPSERVER_HOST,\$APPSERVER_PORT,\$DRAFTSERVER_HOST,\$DRAFTSERVER_PORT > /envoy.yaml

/usr/local/bin/envoy -c /envoy.yaml
