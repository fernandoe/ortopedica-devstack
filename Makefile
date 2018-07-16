DEVSTACK_WORKSPACE ?= $(shell pwd)/..

export DEVSTACK_WORKSPACE
export COMPOSE_PROJECT_NAME=ortopedica


devstack-up: devstack-docker-pull-images devstack-clone

devstack-docker-pull-images:
	docker pull fernandoe/docker-python:3.6.5-alpine
	docker pull mysql:5.7.21
	docker pull nginx:1.13.9-alpine
	docker pull node:8.11.2
	docker pull fernandoe/fe-conta-api:0.0.2
	docker pull fernandoe/fe-pessoa-api:0.0.2
	docker pull fernandoe/fe-endereco-api:0.0.1
	docker pull fernandoe/fe-ortopedica-api:0.0.5
	docker pull fernandoe/ortopedica:0.0.1

devstack-git-clone:
	./scripts/repositories/clone.sh < projects.txt

devstack-git-pull:
	./scripts/repositories/repo.sh pull

devstack-git-status:
	./scripts/repositories/repo.sh status

provision:
	./scripts/provision/provision.sh

compose-up:
	docker-compose -f docker-compose.yml -f docker-compose-dev.yml up

compose-build-%:
	docker-compose -f docker-compose.yml -f docker-compose-dev.yml build $*

compose-up-%:
	docker-compose -f docker-compose.yml -f docker-compose-dev.yml up $*

compose-rm:
	docker-compose rm

compose-logs-%:
	docker-compose logs --tail 50 -f $*

compose-logs:
	docker-compose logs --tail 50 -f

compose-restart-%:
	docker-compose restart $*

compose-stop:
	docker-compose stop

compose-stop-%:
	docker-compose stop $*

docker-migrate-%:
	docker exec -i $* python manage.py migrate

docker-createsuperuser-%:
	docker exec -it $* python manage.py createsuperuser

docker-shell-%:
	docker exec -it $* env TERM=$(TERM) sh

dump-db-%:
	./scripts/database/dump-db.sh $*
