FROM nextcloud:fpm-alpine

# hhttps://github.com/nextcloud/docker/blob/master/20.0/fpm-alpine/Dockerfile
# https://github.com/docker-library/php/blob/master/7.4/alpine3.12/fpm/Dockerfile

# https://www.php.net/manual/en/ini.list.php

RUN echo 'max_execution_time=1000;' > /usr/local/etc/php/conf.d/tweaks.ini; 

COPY ./config/* /var/www/html/config/

VOLUME /var/www/html/
