# ortopedica-devstack


# Up and Running

```bash
make devstack-up
```



# Containers

- mysql: The MySQL database used by the services
- conta: The authentication and authorization API service
- ortopedica: The mainly application used by the final user



# Docker Images

- node:8.11.2
- mysql:5.7.21
- fernandoe/docker-python:3.6.5-alpine
- fernandoe/fe-conta-api:0.0.1
- fernandoe/fe-pessoa-api:0.0.1
- fernandoe/fe-endereco-api:0.0.1
- fernandoe/fe-ortopedica-api:0.0.5