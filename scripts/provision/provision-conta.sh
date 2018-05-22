#!/usr/bin/env bash

set -e
set -o pipefail
set -x

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW} Starting script provision-conta.sh... ${NC}"

echo -e "${GREEN} Starting conta... ${NC}"
docker-compose up -d conta

echo -e "${GREEN} Running migrations...${NC}"
docker exec -i ortopedica.conta python manage.py migrate

echo -e "${GREEN} Creating superuser... ${NC}"
docker exec -i ortopedica.conta python manage.py shell -c "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('demo@example.com', 'password') if not User.objects.filter(email='demo@example.com').exists() else None;"

echo -e "${YELLOW} Finishing script provision-conta.sh... ${NC}"
