#!make
include .env

up:
	docker compose up -d

down:
	docker compose down

.PHONY: build
build:
	docker compose up -d --build

deploy:
	docker network inspect agregator-network >/dev/null 2>&1 || \
	docker network create --driver bridge agregator-network
	make build
	make up
