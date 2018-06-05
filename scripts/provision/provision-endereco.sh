#!/usr/bin/env bash

set -e
set -o pipefail
set -x

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW} Starting script provision-endereco.sh... ${NC}"

echo -e "${GREEN} Starting endereco... ${NC}"
docker-compose up -d endereco

echo -e "${GREEN} Running migrations...${NC}"
docker exec -i ortopedica.endereco python manage.py migrate

echo -e "${YELLOW} Finishing script provision-endereco.sh... ${NC}"
