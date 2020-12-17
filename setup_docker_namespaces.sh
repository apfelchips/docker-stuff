#!/bin/sh

# https://echorand.me/posts/docker-user-namespacing-remap-system-user
# https://docs.docker.com/engine/security/userns-remap/#prerequisites

# root in docker-container --> UID=100000 on docker-host

sudo usermod --add-subuids 100000-165536 $(id -u -n)
sudo usermod --add-subgids 100000-165536 $(id -u -n)

echo "{\"userns-remap\":\"$(id -u -n):$(id -u -n)\"}" | sudo tee /etc/docker/daemon.json

sudo systemctl daemon-reload
sudo systemctl restart docker

