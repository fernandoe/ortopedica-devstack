#!/usr/bin/env bash

set -e
set -o pipefail
set -x

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW} Starting script provision-pessoa.sh... ${NC}"

echo -e "${GREEN} Starting pessoa... ${NC}"
docker-compose up -d api-pessoa

echo -e "${GREEN} Running migrations...${NC}"
docker exec -i api-pessoa python manage.py migrate

echo -e "${YELLOW} Finishing script provision-pessoa.sh... ${NC}"
