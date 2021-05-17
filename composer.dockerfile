FROM composer:2

RUN addgroup -g 1000 ci4 && adduser -G ci4 -g ci4 -s /bin/sh -D ci4

WORKDIR /var/www/html
