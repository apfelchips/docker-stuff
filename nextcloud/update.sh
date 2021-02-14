#!/bin/sh
cd $(realpath $(dirname "${0}"))
docker-compose up --force-recreate --build -d
docker image prune --force
