FROM alpine:edge

RUN set -ex \
   && echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
   && apk add --no-cache stunnel@testing

ENTRYPOINT ["/usr/bin/stunnel"]
CMD ["/etc/stunnel/stunnel.conf"]
