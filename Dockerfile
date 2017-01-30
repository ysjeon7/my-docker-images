FROM wordpress:latest

RUN apt-get update && apt-get install -y unzip rsync && rm -rf /var/lib/apt/lists/* 
RUN touch /usr/local/etc/php/conf.d/upload-limit.ini \
    && echo "upload_max_filesize = 32M" >> /usr/local/etc/php/conf.d/upload-limit.ini \
    && echo "post_max_size =32 M" >> /usr/local/etc/php/conf.d/upload-limit.ini
RUN a2enmod expires headers

VOLUME /var/www/html
COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
