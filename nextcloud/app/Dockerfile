FROM nextcloud:fpm-alpine

# https://github.com/nextcloud/docker/blob/f87624c6eb4f37cf930dfec2441d744d44e31495/20.0/fpm-alpine/Dockerfile
# https://github.com/docker-library/php/blob/deb4a80b409c21ecdd2b884142fab51b48a9b3cb/7.4/alpine3.12/fpm/Dockerfile

# https://www.php.net/manual/en/ini.list.php

RUN echo 'max_execution_time=1000;' > /usr/local/etc/php/conf.d/tweaks.ini; 

COPY ./config/* /var/www/html/config/

VOLUME /var/www/html/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["php-fpm"]
