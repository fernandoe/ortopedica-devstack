#!/bin/bash
set -e
set -o pipefail
set -x

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Bring the databases online.
docker-compose up -d mysql

# Ensure the MySQL server is online and usable
echo "Waiting for MySQL"
until docker exec -i ortopedica-mysql mysql -uroot -ppassword -se "SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'root')" &> /dev/null
do
  printf "."
  sleep 1
done

sleep 5

echo -e "MySQL ready"

echo -e "${GREEN} Creating databases... ${NC}"
docker exec -i ortopedica-mysql mysql -uroot -ppassword conta < ./database-backups/conta.sql
docker exec -i ortopedica-mysql mysql -uroot -ppassword endereco < ./database-backups/endereco.sql
docker exec -i ortopedica-mysql mysql -uroot -ppassword ortopedica < ./database-backups/ortopedica.sql
docker exec -i ortopedica-mysql mysql -uroot -ppassword pessoa < ./database-backups/pessoa.sql

./scripts/provision/provision-conta.sh
./scripts/provision/provision-endereco.sh
./scripts/provision/provision-ortopedica.sh
./scripts/provision/provision-pessoa.sh

docker image prune -f

echo -e "${GREEN} Provisioning complete! ${NC}"
