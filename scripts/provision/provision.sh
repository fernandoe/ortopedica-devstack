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
until docker exec -i ortopedica.mysql mysql -uroot -ppassword -se "SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'root')" &> /dev/null
do
  printf "."
  sleep 1
done

sleep 5

echo -e "MySQL ready"

echo -e "${GREEN}Creating databases and users...${NC}"
docker exec -i ortopedica.mysql mysql -uroot -ppassword mysql < ./scripts/provision/provision.sql

./scripts/provision/provision-conta.sh

docker image prune -f

echo -e "${GREEN}Provisioning complete!${NC}"
