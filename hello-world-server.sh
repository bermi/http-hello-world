#!/bin/sh -x

i=0
echo -n $i > counter

APP_NAME="${APP_NAME-hello-world-app}"

getResponse() {
  i=$(($(cat counter)+1)) && echo -n $i > counter
  echo -e "HTTP/1.1 200 OK\n\n${APP_NAME} @ $(hostname) on $(date) - ($(cat counter) requests)"
}

while true; do getResponse | nc -l -p 8080 -q 1; done