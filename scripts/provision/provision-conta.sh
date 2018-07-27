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
docker-compose up -d api-conta

echo -e "${GREEN} Running migrations...${NC}"
docker exec -i api-conta python manage.py migrate

echo -e "${YELLOW} Finishing script provision-conta.sh... ${NC}"
