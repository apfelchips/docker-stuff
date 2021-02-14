#!/bin/sh

docker-compose down
docker image prune
sudo rm -rfv $(realpath $(dirname "${0}"))/nextcloud-d*
