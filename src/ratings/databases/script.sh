#!/bin/sh

set -e
mongoimport --host localhost --username $MONDODB_USERNAME --password $MONDODB_PASSWORD \
 --db $MONDODB_DATABASE  --collection ratings --drop --file /docker-entrypoint-initdb.d/ratings_data.json
