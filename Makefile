DEVSTACK_WORKSPACE ?= $(shell pwd)/..

export DEVSTACK_WORKSPACE
export COMPOSE_PROJECT_NAME=ortopedica

build:
	docker-compose build ortopedica

provision:
	./scripts/provision/provision.sh

up:
	docker-compose up

git.clone:
	./scripts/repo.sh clone

git.pull:
	./scripts/repo.sh pull

docker.pull:
	docker pull node:8.11.2
	docker pull mysql:5.7.21

%-migrate:
	docker exec -i ortopedica.$* python manage.py migrate

%-createsuperuser:
	docker exec -it ortopedica.$* python manage.py createsuperuser