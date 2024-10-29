#!/usr/bin/env bash

set -e
set -u
set -x

echo "Start database restoration"

psql keycloak_db -U "$POSTGRES_USER" -f /docker-entrypoint-initdb.d/dump.sql

set +x
