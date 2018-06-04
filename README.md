# ortopedica-devenv


# Repositories

- https://github.com/fernandoe/cookiecutter-fe-microservice-api
  - The cookiecutter used to start the project (keep updated)
- git@github.com:fernandoe/fe-conta-server.git
  - Account management
- git@github.com:fernandoe/fe-endereco-server.git
  - Address management
- git@github.com:fernandoe/fe-ortopedica-api.git
  - Mainly API for the service
- git@github.com:fernandoe/fe-pessoa-server.git
  - Supplies and customers management
- git@github.com:fernandoe/ortopedica.git
  - Front-end application



# Containers

- mysql: The MySQL database used by the services
- conta: The authentication and authorization API service
- ortopedica: The mainly application used by the final user



# Tasks



## build

Build all necessary image to run the environment.



## up

Start the environment with all components.




# Docker Images

- node:8.11.2
- mysql:5.7.21
- fernandoe/docker-python:3.6.5-alpine
