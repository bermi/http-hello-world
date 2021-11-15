FROM alpine:latest
RUN apk add --update netcat-openbsd && rm -rf /var/cache/apk/*
COPY hello-world-server.sh /
ENTRYPOINT ["/hello-world-server.sh"]