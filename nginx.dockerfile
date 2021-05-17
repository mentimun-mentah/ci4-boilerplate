FROM nginx:stable-alpine

ADD ./nginx/nginx.conf /etc/nginx/nginx.conf
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html

RUN addgroup -g 1000 ci4 && adduser -G ci4 -g ci4 -s /bin/sh -D ci4

RUN chown ci4:ci4 /var/www/html
