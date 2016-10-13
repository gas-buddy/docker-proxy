FROM nginx:stable-alpine

MAINTAINER GasBuddy <developers@gasbuddy.com>

RUN apk add --no-cache --update tinyproxy && \
    mkdir -p /var/run/tinyproxy && chown tinyproxy:tinyproxy /var/run/tinyproxy && \
    mkdir -p /var/log/tinyproxy && chown tinyproxy:tinyproxy /var/log/tinyproxy

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080

