FROM busybox:latest
MAINTAINER YooSung Jeon <ysjeon71@gmail.com>
RUN mkdir -p /var/lib/mysql && mkdir -p /var/www/html
VOLUME ["/var/lib/mysql", "/var/www/html"]
