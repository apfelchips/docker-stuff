FROM jc21/nginx-proxy-manager:latest
# https://github.com/jc21/nginx-proxy-manager/blob/master/docker/Dockerfile

COPY ./config.json /app/config/production.json

VOLUME [ "/data", "/etc/letsencrypt" ]

