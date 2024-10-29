#!/usr/bin/env bash

set -e
set -u
set -x

echo "Start database restoration"

psql keycloak_db -U "$POSTGRES_USER" -f /docker-entrypoint-initdb.d/dump.sql
#pg_restore -p 5432 -U "$POSTGRES_USER" -v -d keycloak_db /docker-entrypoint-initdb.d/dump.sql

set +x
