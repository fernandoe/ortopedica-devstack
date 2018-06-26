DEVSTACK_WORKSPACE ?= $(shell pwd)/..

export DEVSTACK_WORKSPACE
export COMPOSE_PROJECT_NAME=ortopedica


provision:
	./scripts/provision/provision.sh

compose-build-%:
	docker-compose build $*

compose-up:
	docker-compose up -d
	
compose-up-%:
	docker-compose up $*

compose-rm:
	docker-compose rm

compose-logs-%:
	docker-compose logs --tail 50 -f $*

compose-restart-%:
	docker-compose restart $*

git.clone:
	./scripts/repo.sh clone

git.pull:
	./scripts/repo.sh pull

git.status:
	./scripts/repo.sh status

docker.pull:
	docker pull fernandoe/docker-python:3.6.5-alpine
	docker pull mysql:5.7.21
	docker pull nginx:1.13.9-alpine
	docker pull node:8.11.2

%-migrate:
	docker exec -i ortopedica.$* python manage.py migrate

%-createsuperuser:
	docker exec -it ortopedica.$* python manage.py createsuperuser
