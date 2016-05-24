FROM alpine:edge

RUN set -ex \
   && echo "http://dl-3.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
   && apk add --no-cache stunnel

ENTRYPOINT ["/usr/bin/stunnel"]
CMD ["/etc/stunnel/stunnel.conf"]
