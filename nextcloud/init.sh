#!/bin/sh

COMPOSE_PROJECT_DIR="$(realpath $(dirname $0))"
ENV_FILE="${ENV_FILE:-$COMPOSE_PROJECT_DIR/.env}"

test -f $ENV_FILE && source $ENV_FILE

if [ -z $POSTGRES_PASSWORD ]; then
	RANDOM_DB_PASSWORD=$(openssl rand -base64 32)
	echo "POSTGRES_PASSWORD=\"${RANDOM_DB_PASSWORD}\"" >> $ENV_FILE 
fi

sudo mkdir -p ${NEXTCLOUD_DATA_DIR:-$COMPOSE_PROJECT_DIR/nextcloud-data}
sudo chown -R 100082:100000 ${NEXTCLOUD_DATA_DIR:-$COMPOSE_PROJECT_DIR/nextcloud-data}

sudo mkdir -p ${NEXTCLOUD_DB_DIR:-/$COMPOSE_PROJECT_DIR/nextcloud-db}
sudo chown -R 100072:100000 ${NEXTCLOUD_DB_DIR:-$COMPOSE_PROJECT_DIR/nextcloud-db}

docker-compose up --build -d
