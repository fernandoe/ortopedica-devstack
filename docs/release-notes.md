# Release Notes


## 0.0.1-DEV

- Add the docker-compose.yml with the *ortopedica* definition
- Add build and up tasks to the Makefile
- Add git.pull task to the Makefile
- Add git.status task to the Makefile
- Add docker.pull task to pull all images used by the devstack
- Add %-migrate and %-createsuperuser tasks to manage the database
- Add git.clone task to the Makefile
- Add provision task to the Makefile (mysql)
- Create the conta database and run migrations during the provision task
- Create a superuser demo@example.com during the provision task
- Add project https://github.com/fernandoe/fe-pessoa-server
- Add project https://github.com/fernandoe/fe-endereco-server
