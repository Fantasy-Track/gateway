FROM envoyproxy/envoy-alpine:v1.15-latest

RUN apk update
RUN apk add gettext

COPY envoy.yaml /envoy.yaml.tmpl
COPY start.sh /
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
