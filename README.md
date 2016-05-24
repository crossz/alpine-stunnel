#### Edge Alpine Stunnel

See [hub.docker.com/r/jamespedwards42/alpine-stunnel](https://hub.docker.com/r/jamespedwards42/alpine-stunnel/) for latest releases.

docker run -d --net=host --name your-stunnel -v {LOCAL_PRIVATE.pem}:{/etc/stunnel/PRIVATE.pem} -v {LOCAL.conf}:/etc/stunnel/stunnel.conf jamespedwards42/alpine-stunnel:latest
