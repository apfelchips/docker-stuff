#!/bin/sh

cd $@
docker-compose up --force-recreate --build -d
docker image prune
