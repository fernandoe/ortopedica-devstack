DEVSTACK_WORKSPACE ?= $(shell pwd)/..

export DEVSTACK_WORKSPACE
export COMPOSE_PROJECT_NAME=ortopedica

build:
	docker-compose build ortopedica

up:
	docker-compose up
