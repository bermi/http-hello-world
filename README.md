# Lightweight hello world server

Use this lightweight (5.78MB) hello world server to respond with the
hostname and date.

Useful for testing load balancers as it includes the hostname,
the date and the number of requests it has handled.

For example

    hello-world-app @ 8c923b8aee97 on Mon Nov 15 13:53:16 UTC 2021 - (8 requests)

Pass APP_NAME environment variable to customize the application name on the response.

Warning, this is not suitable for stress testing since the netcat command can
only handle one concurrent request per second.


Run with

    docker run -it --rm -p 80:8080 -e APP_NAME=my-app bermi/http-hello-world

